# harvest_s3_upload_html5

Based on "[Easy Rails Asset Handling with HTML5 & S3](http://www.getharvest.com/blog/2011/02/easy-rails-asset-handling-with-html5-and-s3/)" by The HARVEST (Matt Beale).  Credit to him for this excellent guide.

* plupload has been included to only used the `html5` runtime.
* CSRF issues are handled with middleware ([Ref](http://erniemiller.org/2010/07/09/uploadify-and-rails-3/))

Thanks in particlar to t4nkd ([Jon-Paul Lussier](https://plus.google.com/102304912936426332375/posts)) for his patience, advice, and monumental support!

## How did this app come to be?

`harvest_s3_upload_html5` is based on a [clone of CoreApp](https://github.com/bsodmike/CoreApp).  While 'pre-fabbed' apps are frowned upon, this is fairly current, 3.1.1 was only released few days ago, and it has a fully working TDD/BDD stack setup.

## License
CoreApp is Copyright (c) 2010-2011 [Michael de Silva](http://www.bsodmike.com) ([@bsodmike](https://twitter.com/#!/bsodmike) &amp; [G+](https://plus.google.com/102197309611185157885/posts)), and is released under MIT-LICENSE.