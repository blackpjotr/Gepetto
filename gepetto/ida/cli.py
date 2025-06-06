import functools

import ida_kernwin
import ida_idaapi
from pyexpat.errors import messages

import gepetto.config
import gepetto.ida.handlers

_ = gepetto.config._
CLI: ida_kernwin.cli_t = None
MESSAGES: list[dict] = [
    {"role": "system", "content": _("You are a helpful assistant embedded in IDA Pro. Your role is to facilitate "
                                    "reverse-engineering and answer programming questions.")}
]  # Keep a history of the conversation to simulate LLM memory.

class GepettoCLI(ida_kernwin.cli_t):
    flags = 0
    sname = "Gepetto"
    lname  = "Gepetto - " + _("LLM chat")
    hint = "Gepetto"

    def OnExecuteLine(self, line):
        MESSAGES.append({"role": "user", "content": line})
        
        def stream_callback(content, finished=False):
            """
            Callback to handle streaming responses from the model.
            :param chunk: A chunk of the response text.
            """
            if content:
                print(content, end="", flush=True)  # Print each chunk as it arrives
            elif finished:
                # the stream finished, so we can print a newline
                print()

        # Use OpenAI's streaming API to query the model
        gepetto.config.model.query_model_async(
            MESSAGES,
            stream_callback,
            stream=True,
        )
        return True

    def OnKeydown(self, line, x, sellen, vkey, shift):
        pass

# -----------------------------------------------------------------------------

def cli_lifecycle_callback(code, old=0):
    if code == ida_idaapi.NW_OPENIDB:
        CLI.register()
    elif code == ida_idaapi.NW_CLOSEIDB or code == ida_idaapi.NW_TERMIDA:
        CLI.unregister()

# -----------------------------------------------------------------------------

def register_cli():
    global CLI
    if CLI:
        CLI.unregister()
        cli_lifecycle_callback(ida_idaapi.NW_TERMIDA)
    CLI = GepettoCLI()
    if CLI.register():
        ida_idaapi.notify_when(ida_idaapi.NW_TERMIDA | ida_idaapi.NW_OPENIDB | ida_idaapi.NW_CLOSEIDB, cli_lifecycle_callback)
