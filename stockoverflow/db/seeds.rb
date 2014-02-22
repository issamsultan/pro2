# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Photo.delete_all

photos = Photo.create!([
  { image: 'http://static.ddmcdn.com/gif/landscape-restoration-1.jpg', title: 'My landscape', question: 'Selvage aesthetic Vice kale chips Terry Richardson. XOXO occupy Shoreditch, gentrify retro vegan stumptown readymade DIY vinyl mumblecore seitan Echo Park VHS.' },
  { image: 'http://russiatrek.org/images/photo/novgorod-region-landscape.jpg', title: 'My landscape', question: 'Selvage aesthetic Vice kale chips Terry Richardson. XOXO occupy Shoreditch, gentrify retro vegan stumptown readymade DIY vinyl mumblecore seitan Echo Park VHS.' },
  { image: 'http://upload.wikimedia.org/wikipedia/commons/f/fa/Landscape_of_the_Pico_Island_Vineyard_Culture.jpg', title: 'My landscape', question: 'Selvage aesthetic Vice kale chips Terry Richardson. XOXO occupy Shoreditch, gentrify retro vegan stumptown readymade DIY vinyl mumblecore seitan Echo Park VHS.' },
  { image: 'https://lh3.googleusercontent.com/-W-_OLkMv_gI/Tq9DfJkvk7I/AAAAAAAAACM/mB8WDKwkyOM/w800-h800/Grassland-Landscape-Wallpaper.jpg', title: 'My landscape', question: 'Selvage aesthetic Vice kale chips Terry Richardson. XOXO occupy Shoreditch, gentrify retro vegan stumptown readymade DIY vinyl mumblecore seitan Echo Park VHS.' },
  { image: 'http://digital-photography-school.com/wp-content/uploads/2012/05/dynamic-landscapes02.jpeg', title: 'My landscape', question: 'Selvage aesthetic Vice kale chips Terry Richardson. XOXO occupy Shoreditch, gentrify retro vegan stumptown readymade DIY vinyl mumblecore seitan Echo Park VHS.' },
  { image: 'http://www.landezine.com/wp-content/uploads/2012/01/01-gora-art-landscape-2piers-1024x680.jpg', title: 'My landscape', question: 'Selvage aesthetic Vice kale chips Terry Richardson. XOXO occupy Shoreditch, gentrify retro vegan stumptown readymade DIY vinyl mumblecore seitan Echo Park VHS.' },
  { image: 'http://digital-photography-school.com/wp-content/uploads/2010/07/Landscape-Composition-88.jpg', title: 'My landscape', question: 'Selvage aesthetic Vice kale chips Terry Richardson. XOXO occupy Shoreditch, gentrify retro vegan stumptown readymade DIY vinyl mumblecore seitan Echo Park VHS.' },
  { image: 'http://creativefan.com/files/2010/06/landscape-27-500x348.jpg', title: 'My landscape', question: 'Selvage aesthetic Vice kale chips Terry Richardson. XOXO occupy Shoreditch, gentrify retro vegan stumptown readymade DIY vinyl mumblecore seitan Echo Park VHS.' },
  { image: 'http://3.bp.blogspot.com/-FXH8WH-ueEs/UOMbeSQ2LAI/AAAAAAAADVg/CfJ1UVvwelk/s640/Natural+Landscape+Photographs+by+Kevin+McNeal+%2812%29.jpg', title: 'My landscape', question: 'Selvage aesthetic Vice kale chips Terry Richardson. XOXO occupy Shoreditch, gentrify retro vegan stumptown readymade DIY vinyl mumblecore seitan Echo Park VHS.' },
  { image: 'http://www.dannyst.com/blogimg/gallery-portraits-of-strangers-18.jpg', title: 'My portrait', question: 'Selvage aesthetic Vice kale chips Terry Richardson. XOXO occupy Shoreditch, gentrify retro vegan stumptown readymade DIY vinyl mumblecore seitan Echo Park VHS.' },
  { image: 'http://digital-photography-school.com/wp-content/uploads/2008/07/portrait-background.jpg', title: 'My portrait', question: 'Selvage aesthetic Vice kale chips Terry Richardson. XOXO occupy Shoreditch, gentrify retro vegan stumptown readymade DIY vinyl mumblecore seitan Echo Park VHS.' },
  { image: 'http://1.bp.blogspot.com/-pB9LyJGzjUg/TeXzdLiUyiI/AAAAAAAAAPA/YkpZzdMY25M/s1600/platon_photographer-president-mahmoud-ahmadinejad-portrait.jpg', title: 'My portrait', question: 'Selvage aesthetic Vice kale chips Terry Richardson. XOXO occupy Shoreditch, gentrify retro vegan stumptown readymade DIY vinyl mumblecore seitan Echo Park VHS.' },
  { image: 'http://www.andreasoverland.no/blog/201006/20100609_06.jpg', title: 'My portrait', question: 'Selvage aesthetic Vice kale chips Terry Richardson. XOXO occupy Shoreditch, gentrify retro vegan stumptown readymade DIY vinyl mumblecore seitan Echo Park VHS.' },
  { image: 'http://www.flowdzn.com/wp-content/uploads/2013/10/npg_portraits_nicholson_jack_2002-138144636248ngk.jpg', title: 'My portrait', question: 'Selvage aesthetic Vice kale chips Terry Richardson. XOXO occupy Shoreditch, gentrify retro vegan stumptown readymade DIY vinyl mumblecore seitan Echo Park VHS.' },
  { image: 'http://images.nationalgeographic.com/wpf/media-live/photos/000/239/cache/rajasthan-india-portrait_23942_990x742.jpg', title: 'My portrait', question: 'Selvage aesthetic Vice kale chips Terry Richardson. XOXO occupy Shoreditch, gentrify retro vegan stumptown readymade DIY vinyl mumblecore seitan Echo Park VHS.' },
  { image: 'http://4.bp.blogspot.com/-5HF05O-BcsQ/To4HhQg2hXI/AAAAAAAAI8U/0yT7YyeklXg/s1600/Steve_Jobs_portrait_by_tumb.jpg', title: 'My portrait', question: 'Selvage aesthetic Vice kale chips Terry Richardson. XOXO occupy Shoreditch, gentrify retro vegan stumptown readymade DIY vinyl mumblecore seitan Echo Park VHS.' }
  ])