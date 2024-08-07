require('util.flutter')

local function set_server_config(name)
    local config_path = 'config.server.' .. name

    return require('lspconfig')[name].setup(require(config_path).default_config)
end

return {
    set_server_config = set_server_config
}
