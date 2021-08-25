/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_dalvik_heap.h>
#include <libinit_variant.h>

#include "vendor_init.h"

static const variant_info_t tucana_global_info = {
    .hwc_value = "GLOBAL",
    .sku_value = "",

    .brand = "Xiaomi",
    .device = "tucana",
    .marketname = "",
    .model = "Mi Note 10",

    .nfc = true,
};

static const variant_info_t tucana_cn_info = {
    .hwc_value = "CN",
    .sku_value = "",

    .brand = "Xiaomi",
    .device = "tucana",
    .marketname = "",
    .model = "MI CC9 Pro",

    .nfc = true,
};

static const std::vector<variant_info_t> variants = {
    tucana_global_info,
    tucana_cn_info,
};

void vendor_load_properties() {
    search_variant(variants);
    set_dalvik_heap();
}
