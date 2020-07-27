require("util")  -- core.lualib
require("lualib.cutil")
require("data.init")
require("ui.listeners")

margin_of_error = 1e-8  -- Margin of error for floating point calculations
--devmode = true  -- Enables certain conveniences for development

-- This is no longer in use, as it can't be done well at the moment
--cached_dialogs = {}  -- Dialogs that should be cached when closed

tutorial_export_string = "eNrtWU2P0zAQ/S8+J6u2u0JVjyCQkEBCcFytIseZdAfsODhORVX1vzNOHBraojQ0C9lVbu14Pp5nnj3jdseUTqINmAJ1xlZsdjNf3twtWMCKMk65sNogFGx1v2MZV0Aab39wlUsgDRTOZMfsNncLaEGR1KvlRielsOQ1LARCJiDMufjG9gGzqKAQnHysXs3IQFsXgZHtp9rIOdXxVxC2jky+rHbCDt8EGgkbpggJW1lTQvAbOIpt4HuJBpKIK11mVaQEUsxIEm9Jz4uD5sNqvpw5yDqPJGxANm6F5IUD3SDePwQectQsva/z0Xx9o6WECjTzDlOptXEIPlD84z03ZtVaXY0e6gYE5pXSNbkT3MJaG5cXYXhqMVs77AcXkc9uLYHWbj/XAEhbcfHoAR9jIVVQsSS3odcKb/sAeeQmiSQqpDqlXBak+ZGASLiUQBu021BVJt2R20YuesOQu8OuffQzZPArf6JDjSESpx599kgnBu4P3PF2/EoH/jSPvGIL/LKJfc5vkQMkF+en0m77Xpwm5iB5/QtKDkZAZvmaQs5nM8cvpFvHbiOf8cjjqkq8D3qQ3XCUY2H2Ynhm7/bX8Wx2lmdPWA807tqxOJ77ZqrKioGDYlCEaWkyXqV1qs1IanOmU73g8tx39KDFED3oyua8GIICpxg8E84j8KNnK/S7ahjc9+ISTzac5r0kFGhEiXaa+aaZ7+XNfHU30xn1s5HxfOpntEWdk/dQ8FhOc8aI6lJYABnmkjbdeeYVyMHL0ncGbYMYR0v4V5PG1BL+gtyajnlsLnh3PlNyP79fAlSuqSwmrGrTlZCYF5S9QktMnqYwCjPXERKDUvYEM+jtsxjw9gkGf0zNB7/ibv/fY2p+8pg6CL40/31Qjh/2PwF6R7b4"

if devmode then
    require("lualib.llog")
    llog_excludes = {parent=true, subfloor=true, origin_line=true, tooltip=true, localised_name=true}

    dev_export_string = "eNq1lFFr2zAQx7+Lnu3gpE0Zfh0bFFYY22MpRpbPyRXJ8uRzwQR/951kmaypN1a3fYvv/rn76X86nYSxVfEErkPbiFxkm+2nzfVOJKLry1oqsg6hE/n9STTSACs4hcprT4KG1keQwHA05tHZJm21JBBjIggNdEpqztxkrLHkq/ki352tekW+ji0fQdHUpXWWrA/GcqA5xSVRpQqd6pE8G5pWY41QiZxcD8kzFG7r4FePDqpCGts3oUkFNTYcKQfWxXAy/8ivs8zT2rbQ8AR6Lqu07DzvDDsmLwl7JxvsTbq72n8I2nY1WRiFdfAeWCVontCZKtvskxAsLrsS+9G11lHq0wu9x7Xn0Xg4UmpR/+tAte6xWmX0br/a6Y5Amo+h2mb/eTUfkrhIxZy6nRZz/vxstV8mv+ixYK2tdR7hGwNcbuL8t5Dz4ArbIFq5ooqfhIN1/pDKyZqwOXiOduJnqiJ6NUXgD/IfU29WG6mOkfUSg6VgSs1l06hKd68BOUpXFRoN4+e11B0r7xhEPzfmNL6wOar+ZrQJ6ULFvTnL7uJZvAngFDQkDxAG7l1BfnlpKKI985YFsIVRxyEtE8R7sz3nv4bBj+fAz/m1H8L9jpZ+MS0N4rWv+IJFb7iJC9Xe87AP428/DGfh"
end