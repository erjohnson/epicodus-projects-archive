archi = User.create(name: 'Archibald', email: 'archi@archispace.net', password_digest: 'pw')
yo = User.create(name: 'Yolanda', email: 'yoyo@alldamnday.com', password_digest: 'pw')

Idea.create(name: 'SoundDrone', description: 'A drone with a boom-box that follows you around and plays music.', user_id: archi.id)
Idea.create(name: 'HoloPhone', description: 'A holographic phone.', user_id: yo.id)
