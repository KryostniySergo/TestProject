module.exports =  function chechPhoto(img){
    if(img.mimetype === 'image/png') return false
    if(img.mimetype === 'image/jpeg') return false

    if(img.size >= 10485760) return true

    return true
}