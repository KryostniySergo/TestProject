module.exports =  function chechPhoto(img){
    if(img.mimetype === 'image/png') return false
    if(img.mimetype === 'image/jpeg') return false

    return img.size >= 10485760;
}