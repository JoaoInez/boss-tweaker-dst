-- This information tells other players more about the mod

icon_atlas = "modicon.xml"
icon = "modicon.tex"

name = "Boss Tweaker"
description = "Tweak bosses' health and damage."
author = "astherae"
version = "1.1"

dont_starve_compatible = false
reign_of_giants_compatible = false
shipwrecked_compatible = false
dst_compatible = true

all_clients_require_mod = false
clients_only_mod = false

api_version_dst = 10

server_filter_tags = { "Boss Tweaker" }

local mult_options = {
    {description = "0.5x", data = 0.5},
    {description = "1x", data = 1},
    {description = "1.5x", data = 1.5},
    {description = "2x", data = 2},
}

configuration_options = {
    {
        name = "deerclops_health_mult",
        label = "Deerclops's Health",
        hover = "Deerclops's health multiplier",
        options = mult_options,
        default = 1,
    },
    {
        name = "deerclops_damage_mult",
        label = "Deerclops's Damage",
        hover = "Deerclops's damage multiplier",
        options = mult_options,
        default = 1,
    },
    {
        name = "moose_health_mult",
        label = "Moose/Goose's Health",
        hover = "Moose/Goose's health multiplier",
        options = mult_options,
        default = 1,
    },
    {
        name = "moose_damage_mult",
        label = "Moose/Goose's Damage",
        hover = "Moose/Goose's damage multiplier",
        options = mult_options,
        default = 1,
    },
    {
        name = "antlion_health_mult",
        label = "Antlion's Health",
        hover = "Antlion's health multiplier",
        options = mult_options,
        default = 1,
    },
    {
        name = "antlion_damage_mult",
        label = "Antlion's Damage",
        hover = "Antlion's damage multiplier",
        options = mult_options,
        default = 1,
    },
    {
        name = "bearger_health_mult",
        label = "Bearger's Health",
        hover = "Bearger's health multiplier",
        options = mult_options,
        default = 1,
    },
    {
        name = "bearger_damage_mult",
        label = "Bearger's Damage",
        hover = "Bearger's damage multiplier",
        options = mult_options,
        default = 1,
    },
    {
        name = "dragonfly_health_mult",
        label = "Dragonfly's Health",
        hover = "Dragonfly's health multiplier",
        options = mult_options,
        default = 1,
    },
    {
        name = "dragonfly_damage_mult",
        label = "Dragonfly's Damage",
        hover = "Dragonfly's damage multiplier",
        options = mult_options,
        default = 1,
    },
    {
        name = "dragonfly_sleep_immunity",
        label = "Enraged Dragonfly's Sleep Immunity",
        hover = "Enraged Dragonfly's sleep immunity",
        options = {
            {description = "Disabled", data = false},
            {description = "Enabled", data = true},
        },
        default = false,
    },
    {
        name = "minotaur_health_mult",
        label = "Ancient Guardian's Health",
        hover = "Ancient Guardian's health multiplier",
        options = mult_options,
        default = 1,
    },
    {
        name = "minotaur_damage_mult",
        label = "Ancient Guardian's Damage",
        hover = "Ancient Guardian's damage multiplier",
        options = mult_options,
        default = 1,
    },
}