local my_arduino_fqbn = {
    ["/home/h4ck3r/dev/arduino/blink"] = "arduino:avr:nano",
    ["/home/h4ck3r/dev/arduino/sensor"] = "arduino:mbed:nanorp2040connect",
}

local DEFAULT_FQBN = "arduino:avr:uno"
return {
  on_new_config = function (config, root_dir)
    local partial_cmd = server:get_default_options().cmd
    local fqbn = my_arduino_fqbn[root_dir]
    if not fqbn then
        vim.notify(("Could not find which FQBN to use in %q. Defaulting to %q."):format(root_dir, DEFAULT_FQBN))
        fqbn = DEFAULT_FQBN
    end
    config.cmd = vim.list_extend(partial_cmd, { "-fqbn", fqbn })
  end
}
