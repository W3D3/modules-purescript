const setup = require("./build.min");

const hsimp = setup({
    calcs: 40e9,
    periods: require("../dictionaries/periods"),
    namedNumbers: require("../dictionaries/named-numbers"),
    characterSets: require("../dictionaries/character-sets"),
    dictionary: require("../dictionaries/top10k"),
    patterns: require("../dictionaries/patterns"),
    checkMessages: require("../dictionaries/checks"),
});

console.log(hsimp("HowSecureIsMyPassword?"));
console.log(hsimp("password1"));

console.time();

for (let i = 0; i < 1000; i++) {
    hsimp("HowSecureIsMyPassword?");
}

console.timeEnd();
