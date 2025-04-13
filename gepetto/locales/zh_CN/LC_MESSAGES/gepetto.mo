��    %      D  5   l      @  �   A  /   ,     \  h   i  J   �       J   :  ^   �  )   �       >        ^     n  G   �     �  E   �  I     (   d  �   �  �        �     �      �     	  R   !	  D   t	  [   �	  6   
  /   L
  .   |
  V   �
  �     /   �  +   �  -   �  7     �  F  �   �  '   �     �  e   �  A   E     �  O   �  Z   �  (   N     w  +   �     �     �  ;   �  
     6     A   U     �  x   �  �   0     �     �  #   �       >     9   T  P   �  *   �  '   
  *   2  M   ]  o   �  $     0   @  /   q  ;   �               %   
                 	                                                 #                                  !            $                                "                 Analyze the following C function:
{decompiler_output}
Suggest better variable names, reply with a JSON array where keys are the original names and values are the proposed names. Do not explain anything, only print the JSON dictionary. Attempting to load the first available model... Auto Analyze Can you explain what the following C function does and suggest a better name for it?
{decompiler_output} Cannot extract valid JSON from the response. Asking the model to fix it... Comment generated by Gepetto Context length exceeded! Reducing the completion tokens to {max_tokens}... Could not obtain valid data from the model, giving up. Dumping the response for manual import: Couldn't change model to {model}: {error} Explain function General exception encountered while running the query: {error} Generate C Code Generate Python Code Generate python code from the currently selected function using {model} LLM chat No model available. Please edit the configuration file and try again. Please edit the configuration file to insert your {api_provider} API key! Please fix the following JSON document:
 Please generate equivalent Python code based on the following decompiled C code, and provide an example of the function call:
{decompiler_output} Please generate executable C code based on the following decompiled C code and ensure it includes all necessary header files and other information:
{decompiler_output} Rename variables Request to {model} sent... See usage instructions on GitHub Select model The JSON document provided in this response is invalid. Can you fix it?
{response} The JSON document returned is invalid. Asking the model to fix it... Unfortunately, this function is too big to be analyzed with the model's current API limits. Use {model} to explain the currently selected function Use {model} to rename this function's variables Uses {model} to enrich the decompiler's output Warning: Gepetto's configuration doesn't contain option {option} in section {section}! You are a helpful assistant embedded in IDA Pro. Your role is to facilitate reverse-engineering and answer programming questions. {model} could not complete the request: {error} {model} generated code saved to {file_name} {model} query finished in {time:.2f} seconds! {model} query finished! {replaced} variable(s) renamed. Project-Id-Version: Gepetto 1.1
Report-Msgid-Bugs-To: justicerage __at__ manalyzer(dot)org
PO-Revision-Date: 2025-04-12 23:15+0800
Last-Translator: Ivan K., 2023
Language-Team: Chinese (China) (https://app.transifex.com/gepetto/teams/164045/zh_CN/)
Language: zh_CN
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Generator: Poedit 3.6
 请分析以下 C 函数：
{decompiler_output}
建议更好的变量名，使用 JSON 字典格式回复（键为原始名称，值为建议名称）。无需解释，直接输出 JSON 字典。 正在尝试加载首个可用模型... 自动分析 你能解释下面这个 C 函数的功能并为其建议更合适的名称吗？
{decompiler_output} 无法从响应中提取有效 JSON，正在请求模型修复... 由 Gepetto 生成的注释 上下文长度超出限制！正在将完成令牌数缩减至 {max_tokens}... 无法从模型获取有效数据，放弃操作。正在转储响应以供手动导入： 无法切换至 {model} 模型：{error} 解释函数 运行查询时遇到常规异常：{error} 生成C语言代码 生成Python代码 使用 {model} 从当前选择的函数生成 python 代码 LLM 对话 没有可用模型，请编辑配置文件后重试。 请编辑配置文件并插入您的 {api_provider} API 密钥！ 请修复以下 JSON 文档：
 请根据以下C反编译代码生成等价的python代码，并提供这个函数的调用示例：
{decompiler_output} 请根据以下C反编译代码生成可执行的C代码，并确保包含所有必要的头文件和其他信息：
{decompiler_output} 重命名变量 {model} 请求发送中... 请查看 GitHub 上的使用说明 选择模型 此响应提供的 JSON 文档无效，请修复：
{response} 返回的 JSON 文档无效，正在请求模型修复... 很遗憾，此函数规模过大，已超出模型当前 API 的限制范围。 使用 {model} 解释当前选择的函数 使用 {model} 重命名函数的变量 使用 {model} 增强反编译器的输出 警告：Gepetto 配置文件的 {section} 章节中缺少 {option} 选项！ 您是内置于 IDA Pro 的智能助手，主要职责是协助逆向工程分析和解答编程相关问题。 {model} 无法完成请求：{error} {model} 生成的代码保存到了 {file_name}  {model} 请求完毕，耗时 {time:.2f} 秒！ {model} 请求完成！已重命名 {replaced} 个变量。 