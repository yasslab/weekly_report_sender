# Weekly Report Launcher

A ruby script that helps sending weekly report like this.

![Screen Shot of Weekly Report Sender](http://dl.dropbox.com/u/2819285/wrs_ss.png)

## Requirements

- [ruby-gmail](http://dcparker.github.com/ruby-gmail/)
  - You can install this gem by typing the following command:
    `gem install gmail`

## How to Run

1. Open `main.rb` and set your own variables such as:

   - to_addr
   - username
   - password

2. Write some temprate body text in `body.txt`, which is used for Body in email.

   `vim body.txt`
   
3. Check if you can run the script.

   `ruby main.rb`

4. Now, you can easily send weekly report.

## Why Weekly Report?

It's because the following article makes sense to me and I really want to use such system.

[Silicon Valley’s Productivity Secret](http://blog.idonethis.com/post/16736314554/silicon-valleys-productivity-secret)

But the introduced system is not opensource. So I created this.

## Related Repositories

1. [Weekly Report Bot](https://github.com/yasslab/weekly_report_bot)
2. [Weekly Report Helper](https://github.com/yasslab/weekly_report_helper)
3. [Weekly Report Sender](https://github.com/yasslab/weekly_report_sender)

## License

(The MIT License)

Copyright (c) 2012 Yohei YASUKAWA

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


