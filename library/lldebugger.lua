--- @meta

--- Local Lua Debugger API.
lldebugger = {}

--- Start debugging with the Local Lua Debugger.
---
--- If `breakImmediately` isn't specified, then the value of the environment
--- variable `LOCAL_LUA_DEBUGGER_VSCODE` is used.
--- @param breakImmediately boolean? True to break immediately after starting to debug.
function lldebugger.start(breakImmediately) end

--- Stop debugging with the Local Lua Debugger.
function lldebugger.stop() end

--- Stop debugging currently debugged function.
function lldebugger.finish() end

--- Request a breakpoint.
function lldebugger.requestBreak() end

--- Debug a function.
---
--- If `breakImmediately` isn't specified, then it is assumed to be `false`.
--- @param func function The function to debug.
--- @param breakImmediately boolean? True to break immediately after starting to debug.
--- @param ... any? Any additional arguments to use for the function call.
--- @return ... Any return values from the function.
function lldebugger.call(func, breakImmediately, ...) end

--- Debug a file.
--- The debugged file will have its own environment as a proxy to `_G`.
--- `arg` will be set to be the argument `arg`.
---
--- If `breakImmediately` isn't specified, then it is assumed as `false`.
---
--- If `arg` isn't specified, then it is set to `{}`.
--- @param filePath string The path to the file to debug.
--- @param breakImmediately boolean? True to break immediately after starting to debug.
--- @param arg any? The `arg` value to set in the environment.
--- @return ...unknown Any return values from the file.
function lldebugger.runFile(filePath, breakImmediately, arg) end

return lldebugger
