# Description:
#   Wow. Such Doge
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot doge me - Wow. Such Doge
#
# Author:
#   shaundon

module.exports = (robot) ->

  # Doge image URLs
  doges = [
        'http://24.media.tumblr.com/010f717469d846151a5317f769bc1ac3/tumblr_mqsx2kTKli1szim6vo1_400.gif',
        'http://24.media.tumblr.com/6a723af35ae1f123aa55182a60e5c181/tumblr_muzpkylW9o1szim6vo1_400.png',
        'http://24.media.tumblr.com/8a99c81b0242e1381fd540ff5782cacd/tumblr_mv84huyuN11s4bl2qo1_400.gif',
        'http://24.media.tumblr.com/8c4fd06a9f31d49c5f069f484ed6443a/tumblr_mpujg9yDjh1szim6vo1_400.jpg',
        'http://24.media.tumblr.com/a49a8730304a219ec067b38b2a077342/tumblr_muqdtiQmCk1szim6vo1_400.gif',
        'http://24.media.tumblr.com/cce2287cd5eb22ad85d416f33cdfc4c2/tumblr_mqasxzAD5z1szim6vo1_400.jpg',
        'http://24.media.tumblr.com/e989bccd7bae81eda5081e0ea2312d69/tumblr_mv8yg1cCyv1rvnv0io1_500.gif',
        'http://25.media.tumblr.com/2af7a1ef68df436da7dc37d07657d8fa/tumblr_mpsvmwLfuD1szim6vo1_400.jpg',
        'http://25.media.tumblr.com/3bee619ed665f759fe73fef2982e124d/tumblr_mpujg9yDjh1szim6vo3_400.jpg',
        'http://25.media.tumblr.com/66796d75f65aff2048d4739b0776e6c0/tumblr_mpujg9yDjh1szim6vo2_400.jpg',
        'http://25.media.tumblr.com/8d5cd50a3f82387f9c06a3061f6e9792/tumblr_mwjcw2H8TE1r65re8o1_400.jpg',
        'http://25.media.tumblr.com/d30ace50e7199febc1b3346841270d5d/tumblr_mr8it5PFnR1szim6vo1_400.jpg',
        'http://25.media.tumblr.com/de48c0172e890ade5090752cf2d8bf44/tumblr_mx8ayj5sTF1qb606uo1_500.jpg',
        'http://25.media.tumblr.com/ed19cb78e4f950d5ab0e1891ce5d31e6/tumblr_mrxz4wOBV51szim6vo1_400.jpg',
        'http://2damnfunny.com/wp-content/uploads/2013/10/Shibe-Doge-Declares-Siberia-The-Home-Of-Wow.jpg',
        'http://31.media.tumblr.com/06382138c587c0fdc62e9ecf6cfb9697/tumblr_mrl5dxZHyP1qzmowao1_400.gif',
        'http://31.media.tumblr.com/86a92b93209896cc215bd59a79e21725/tumblr_mwa4c9VaoA1szim6vo1_400.png',
        'http://31.media.tumblr.com/91ecab6882e84ffa616eef2d40432bcb/tumblr_ms90rrgzwt1szim6vo1_400.jpg',
        'http://31.media.tumblr.com/bafd9d6c3902ca21c8d4e7a3e75e1253/tumblr_mr696b9BGu1szim6vo1_400.jpg',
        'http://31.media.tumblr.com/bfbaf428eda1204cb3812f4d476674d8/tumblr_mqepne7XzV1szim6vo1_400.jpg',
        'http://31.media.tumblr.com/d5ff89991ce9b9f117fda6e4db2166ba/tumblr_mvm2hiic1D1szim6vo1_400.jpg',
        'http://d24w6bsrhbeh9d.cloudfront.net/photo/aD0b92N_460sa.gif',
        'http://distilleryimage2.ak.instagram.com/d7a953ac638611e39395120aa4c2c382_8.jpg',
        'http://hugelolcdn.com/i/199024.gif',
        'http://i.imgur.com/15q15aa.jpg',
        'http://i.imgur.com/1uBYSzq.jpg',
        'http://i.imgur.com/4tz2eNt.jpg',
        'http://i.imgur.com/6vLbz7C.png',
        'http://i.imgur.com/8N4hbTC.jpg',
        'http://i.imgur.com/BCVx8Ko.gif',
        'http://i.imgur.com/bWr6hGa.jpg',
        'http://i.imgur.com/CMzhGFb.jpg',
        'http://i.imgur.com/EATI8kN.png',
        'http://i.imgur.com/HYWjTOp.jpg',
        'http://i.imgur.com/LPqLT9N.png',
        'http://i.imgur.com/LSzIWYz.gif',
        'http://i.imgur.com/nF8DtvV.jpg',
        'http://i.imgur.com/pGiLpW4.jpg',
        'http://i.imgur.com/QkFqw02.jpg',
        'http://i.imgur.com/rAeDwYRl.jpg',
        'http://i.imgur.com/ReFH3Ls.jpg',
        'http://i.imgur.com/rEspvqJ.gif',
        'http://i.imgur.com/rOVj9UF.jpg',
        'http://i.imgur.com/S3xKxdT.jpg',
        'http://i.imgur.com/TgtB16v.png',
        'http://i.imgur.com/u0WUbyX.gif',
        'http://i.imgur.com/WbRRtAR.jpg',
        'http://i.imgur.com/XeWYoPs.jpg',
        'http://i.imgur.com/xFNadmU.png',
        'http://i.imgur.com/Xz7wmc7.jpg',
        'http://i.imgur.com/Y30JgKh.jpg',
        'http://i.imgur.com/Z99LgR7.jpg',
        'http://i.imgur.com/Z9NX2Tj.jpg',
        'http://i.imgur.com/ZPY1WUp.png',
        'http://i0.kym-cdn.com/photos/images/newsfeed/000/581/296/c09.jpg',
        'http://i0.kym-cdn.com/photos/images/newsfeed/000/648/946/6ac.jpg',
        'http://i1.kym-cdn.com/photos/images/newsfeed/000/581/567/bab.jpg',
        'http://i1.kym-cdn.com/photos/images/original/000/645/439/125.jpg',
        'http://i1.kym-cdn.com/photos/images/original/000/648/312/8ca.png',
        'http://i100.photobucket.com/albums/m35/blackdice23/1992-Dodge-Viper-front-three-quarter_zps70911062.gif',
        'http://i2.kym-cdn.com/photos/images/newsfeed/000/581/168/9f1.jpg',
        'http://i2.kym-cdn.com/photos/images/original/000/644/620/2e9.jpg',
        'http://i2.kym-cdn.com/photos/images/original/000/646/486/07d.gif',
        'http://i2.minus.com/ilXWkyP7QN3EX.jpg',
        'http://i3.kym-cdn.com/photos/images/original/000/582/646/ed6.jpg',
        'http://img.gawkerassets.com/img/195nsx6rld7oygif/ku-medium.gif',
        'http://media.tumblr.com/10c7881e6aec6ad0fb41e9766639e235/tumblr_inline_mqxd8242S81qz4rgp.jpg',
        'http://s13.postimg.org/fzqm5yq6v/ms_paint_creations_cannot_kill_doge_because_doge.jpg',
        'http://static.fjcdn.com/comments/Have+another+shibe+_a99207a3a6813dde5ade843ac0786f2c.jpg',
        'http://static.fjcdn.com/pictures/Shibe_ca1bd3_4825797.jpg',
        'http://static1.fjcdn.com/comments/4707626+_36cc6d9778b7e83fcd4c780dab841945.png',
        'http://static1.fjcdn.com/comments/How+did+this+even+start+_7155a69fce359eb865d3b0a5c27f1359.jpg',
        'http://static2.fjcdn.com/comments/I+m+gonna+post+a+few+_54013ba869e922f46bff8546ef048759.jpg',
        'http://static4.fjcdn.com/comments/+_f6b3059315b636fcbaae98bd5533fb6b.jpg',
        'http://th09.deviantart.net/fs71/PRE/i/2013/333/4/c/doge_tattoo_by_zombiesmudge-d6w576l.jpg',
        'http://twilight.ponychan.net/chan/files/src/138327501031.jpg',
        'https://pbs.twimg.com/media/BbRDRhoCQAA0iQE.jpg',
        'https://pbs.twimg.com/media/BcNNIaXIQAARewQ.jpg',
        'https://pbs.twimg.com/media/BcSCpVDCcAASKRl.png',
        'https://pbs.twimg.com/media/BdTWMskCEAAQ5b7.jpg',
        'https://people.mozilla.org/~smartell/meme/such-logo.gif'
    ]

  robot.respond /doge me/i, (msg) ->
    msg.send msg.random doges
