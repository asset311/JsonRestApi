\l ../jsonrestapi.q

user:flip `id`name!(0 1 2;`Lauren`Kyle`Dan)

.post.serve["/identify";
  {[req]
    -1 "Identifying as ",username:req[`body;`username];
    $[(`$username) in user`name;
      .jra.authenticatedJsonResponse[sessionToken:64?0x0;()];
      .jra.unauthorizedResponse[]
    ]
  }]

.jra.listen 8000