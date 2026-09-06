#import "lib/cover-letter-format.typ": cover-letter
#import sys.inputs.at("content"): content
#import sys.inputs.at("env", default: "env.redacted.typ"): env

#cover-letter(content(env))
