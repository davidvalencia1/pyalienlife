local FUN = require("__pycoalprocessing__/prototypes/functions/functions")

--ADAPTATIONS


for _, drill in pairs(data.raw['mining-drill']) do
	drill.allowed_effects = {"consumption", "speed", "pollution"}
end

local recipes_list =
	{
  "mosfet",
  "zogna-bacteria",
  "formamide",
  "artificial-blood",
  "fish-oil",
  "manure-bacteria",
  "liquid-manure",
  "creamy-latex",
  "formic-acid",
  "biomass-1",
  "biomass-2",
  "wood-seedling",
  "wood-seeds",
  "empty-petri-dish",
  "coke-co2",
  "agar",
  "petri-dish",
  "moss-gen",
  "cage",
  "neuroprocessor",
  "py-science-pack-1",
  "py-science-pack-2",
  "py-science-pack-3",
  "py-science-pack-4",
  "fertilizer-1",
  "fertilizer-4",
  "flutec-pp6",
  "cobalt-fluoride",
  "decalin",
  "flavonoids",
  "cytostatics",
  "microcin-j25",
  "resveratrol",
  "gh",
  "lard-from-brains",
  "hcl-from-guts",
  "olechemicals-from-skin",
  "pelt-processing",
  "reca",
  "mixed-ores",
  "cobalt-extract",
  "cobalt-sulfate",
  "cobalt-sulfate-02",
  "cobalt-oxide",
  "cobalt-nx",
  "dried-grods",
  "zymogens",
  "mmp",
  "peptidase-m58",
  "alien-enzymes",
  "antiviral",
  "nitrogen-mustard",
  "pacifastin",
  "metallic-glass",
  "ticocr-alloy",
  "nanochondria",
  "bmp",
  "hyaline",
  "cellulose-00",
  "cellulose-02",
  "lignin",
  "lignin-to-aromatics",
  "pheromones",
  "neuromorphic-chip",
  "nano-cellulose",
  "gasoline-cellulose",
  "filtration-media-3",
  "cellulose-gasification",
  "yotoi-cellulose",
  "biofilm-3",
  "manure-to-biomass",
  "manure-to-crude",
  "sodium-alginate",
  "latex-slab",
  "latex",
  "stopper",
  "sap-01",
  "bio-container",
  "naven-coal",
  "oleochemical-combustion",
  "fish-oil-combustion",
  "lard-combustion",
  "ethanol-combustion",
  "seeds-extract-01",
  "syrup-01",
  "energy-drink",
  "a-molasse",
  "sweet-syrup",
  "sugar",
  "b-molasse",
  "ethanol",
  "lime-from-shell",
  "replicator-bioreserve",
  "oleochemicals-3",
  "blood-to-iron",
  "meat-to-iron",
  "meat-and-gut-to-copper",
  "arthropod-blood-to-copper",
  "tuuphra-to-copper",
  "meat-to-copper",
  "guts-to-copper",
  "fish-to-iron",
  "tuupha-to-iron",
  "fawogae-to-iron",
  "fish-to-tin",
  "meat-to-nitrogen",
  "guts-to-chlorine",
  "blood-to-chlorine",
  "brain-guts-to-zinc",
  "grod-to-zinc",
  "blood-to-zinc",
  "bhoddos-to-ti",
  "navens-to-ti",
  "yaedol-to-sulfur",
  "fawogae-to-sulfur",
  "rennea-to-copper",
  "yaedols-to-copper",
  "brain-to-zinc",
  "guts-to-zinc",
  "carapace-to-al",
  "spikes-to-mo",
  "tuuphra-to-mo",
  "cridren-seeds-to-mo",
  "yotoi-leaves-to-chromium",
  "yotoi-fruit-to-chromium",
  "meat-to-chromium",
  "yotoi-seed-to-chromium",
  "meat-to-tin",
  "yotoi-fruit-to-tin",
  "grod-to-tin",
  "navens-to-tin",
  "manure-to-nitrogen",
  "fawogae-spore",
  "petri-dish-bacteria",
  "plasmids",
  "retrovirus",
  "retrovirus-2",
  "cdna",
  "primers",
  "dna-polymerase",
  "dna-polymerase-2",
  "alien-sample-02",
  "alien-sample-03",
  "gta",
  "cysteine",
  "adam42-gen",
  "zinc-finger-proteins",
  "anabolic-rna",
  "propeptides",
  "purine-analogues",
  "immunosupressants",
  "antitumor",
  "dynemicin",
  "enediyne",
  "enzyme-pks",
  "recombinant-ery",
  "recombinant-ery-2",
  "orexigenic",
  "phytoplankton-2",
  "fetal-serum-01",
  "vrauks",
  "vrauks-codex",
  "earth-generic-sample",
  "vrauks-food-01",
  "vrauks-food-02",
  "cottongut-food-01",
  "cottongut-food-02",
  "korlex-food-01",
  "korlex-food-02",
  "vrauks-mature-01",
  "vrauks-mature-02",
  "ulric",
  "ulric-codex",
  "earth-horse-sample",
  "ulric-food-01",
  "ulric-food-02",
  "ulric-mature-01",
  "ulric-mature-02",
  "sea-sponge",
  "sea-sponge-codex",
  "earth-sea-sponge-sample",
  "sea-sponge-processing-01",
  "sea-sponge-sprouts-processing-01",
  "sea-sponge-sprouts",
  "sea-sponge-sprouts-2",
  "sea-sponge-sprouts-3",
  "sea-sponge-sprouts-4",
  "ralesia-sample",
  "ralesia-codex",
  "earth-flower-sample",
  "replicator-ralesia",
  "mukmoux",
  "mukmoux-codex",
  "earth-cow-sample",
  "mukmoux-food-01",
  "mukmoux-food-02",
  "mukmoux-mature-01",
  "mukmoux-mature-02",
  "tuuphra-sample",
  "tuuphra-codex",
  "earth-potato-sample",
  "tuuphra-seeds",
  "replicator-tuuphra",
  "arthurian",
  "arthurian-codex",
  "earth-lizard-sample",
  "arthurian-food-01",
  "arthurian-food-02",
  "arthurian-grow-01",
  "arthurian-mature-01",
  "arthurian-mature-02",
  "navens-sample",
  "navens-codex",
  "navens-spore",
  "yotoi-sample",
  "yotoi-codex",
  "earth-tropical-tree-sample",
  "yotoi-seeds",
  "yotoi-leaves",
  "replicator-yotoi",
  "replicator-yotoi-fruit",
  "dhilmos",
  "dhilmos-codex",
  "dhilmos-grow-01",
  "dhilmos-mature-01",
  "dhilmos-mature-02",
  "dhilmos-food-01",
  "dhilmos-food-02",
  "scrondrix",
  "scrondrix-codex",
  "earth-roadrunner-sample",
  "scrondrix-mature-01",
  "scrondrix-mature-02",
  "rennea-sample",
  "rennea-codex",
  "earth-sunflower-sample",
  "rennea-seeds",
  "replicator-rennea",
  "phadai",
  "phadai-codex",
  "earth-tiger-sample",
  "phadai-food-01",
  "phadai-food-02",
  "phadai-mature-01",
  "phadai-mature-02",
  "auog",
  "auog-codex",
  "earth-bear-sample",
  "auog-food-01",
  "auog-food-02",
  "auog-mature-01",
  "auog-mature-02",
  "charged-auog",
  "fish-food-01",
  "fish-food-02",
  "fish-sex-pup-01",
  "fish-sex-pup-02",
  "fish-mature-01",
  "yaedols-sample",
  "yaedols-codex",
  "yaedols-spores",
  "dingrits-codex",
  "earth-wolf-sample",
  "dingrits-food-01",
  "dingrits-food-02",
  "kmauts-codex",
  "vonix-codex",
  "grod-sample",
  "grod-codex",
  "earth-jute-sample",
  "phagnot-codex",
  "earth-giraffe-sample",
  "phagnot-food-01",
  "phagnot-food-02",
  "bhoddos-sample",
  "bhoddos-codex",
  "xeno-codex",
  "arqad-codex",
  "cridren-sample",
  "cridren-codex",
  "earth-venus-fly-sample",
  "zipir-codex",
  "earth-crustacean-sample",
  "zipir-food-01",
  "zipir-food-02",
  "trits-codex",
  "xyhiphoe-codex",
  "fertilizer-3",
  "kicalk-sample",
  "kicalk-codex",
  "earth-palmtree-sample",
  "cadaveric-arum-sample",
  "cadaveric-arum-codex",
  "antelope",
  "antelope-codex",
  "earth-antelope-sample",
  "bones-to-phosphate",
  "carapace-to-re",
  "meat-to-cyanic",
  "kicalk-to-iron",
  "cadaveric-to-sulfur",
  "cadaveric-to-copper",
  "blood-to-urea",
  "ethylene-from-fruit",
  "fiber-01",
  "phenol-02",
  "filtration-media-4",
  "urea-from-liquid-manure",
  "yotoi-fiber",
  "kicalk-fiber",
  "cellulose-01",
  "methane-from-liquid-manure",
  "chithin-to-phosphate",
  "meat-to-phosphate",
  "fish-to-phosphate",
  "wood-seeds-to-phosphate",
  "rennea-to-phosphate",
  "biopolymer-2",
  "phenol-3",
  "organics-from-wood-2",
  "soil-separation-2",
  "biomass-1-a",
  "dried-grods-02",
  "gas-bladder-to-natura-gas",
  "concrete-02",
  "planter-box",
  "empty-planter-box",
	}

--adding to module limitation list
FUN.productivity(recipes_list)

local mod_cats =
  {
    "tree",
    "seaweed",
    "moss",
    "sap",
    "ulric",
    "sponge",
    "ralesia",
    "mukmoux",
    "tuuphra",
    "arthurian",
    "navens",
    "yotoi",
    "rennea",
    "dhilmos",
    "scrondrix",
    "phadai",
    "auog",
    "fish",
    "yaedols",
    "dingrits",
    "kmauts",
    "vonix",
    "grod",
    "phagnot",
    "bhoddos",
    "arqad",
    "xeno",
    "kicalk",
    "cridren",
    "antelope",
    "zipir",
    "trits",
    "arum",
    "vrauks",
    "xyhiphoe",
    "korlex",
    "fawogae",
    "moondrop",
    "cottongut",
    "guar"
  }

--log(serpent.block(data.raw.module['effectivity-module']))

--log(serpent.block(data.raw.module["moondrop"]))
