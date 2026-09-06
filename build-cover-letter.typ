#import "lib/format-cover-letter.typ": format-cover-letter
#import sys.inputs.at("content"): content
#import sys.inputs.at("env", default: "env.redacted.typ"): env

#format-cover-letter(content(env))
