use "json"

use ".."

actor Main
  new create(env: Env) =>
    let obj = """
[
  {
    "sha": "f9afa950e26f5d548d955f92e83e6b8e10cc8438",
    "node_id": "C_kwDOAE3WVdoAKGY5YWZhOTUwZTI2ZjVkNTQ4ZDk1NWY5MmU4M2U2YjhlMTBjYzg0Mzg",
    "commit": {
      "author": {
        "name": "Owen Ou",
        "email": "169064+owenthereal@users.noreply.github.com",
        "date": "2022-04-04T05:32:49Z"
      },
      "committer": {
        "name": "Nico Williams",
        "email": "nico@cryptonector.com",
        "date": "2022-04-04T17:04:12Z"
      },
      "message": "Update AUTHORS",
      "tree": {
        "sha": "5eda0a4c1d228dba7c71d07e7b0c179ea8db0cd9",
        "url": "https://api.github.com/repos/stedolan/jq/git/trees/5eda0a4c1d228dba7c71d07e7b0c179ea8db0cd9"
      },
      "url": "https://api.github.com/repos/stedolan/jq/git/commits/f9afa950e26f5d548d955f92e83e6b8e10cc8438",
      "comment_count": 0,
      "verification": {
        "verified": false,
        "reason": "unsigned",
        "signature": null,
        "payload": null
      }
    },
    "url": "https://api.github.com/repos/stedolan/jq/commits/f9afa950e26f5d548d955f92e83e6b8e10cc8438",
    "html_url": "https://github.com/stedolan/jq/commit/f9afa950e26f5d548d955f92e83e6b8e10cc8438",
    "comments_url": "https://api.github.com/repos/stedolan/jq/commits/f9afa950e26f5d548d955f92e83e6b8e10cc8438/comments",
    "author": {
      "login": "owenthereal",
      "id": 169064,
      "node_id": "MDQ6VXNlcjE2OTA2NA==",
      "avatar_url": "https://avatars.githubusercontent.com/u/169064?v=4",
      "gravatar_id": "",
      "url": "https://api.github.com/users/owenthereal",
      "html_url": "https://github.com/owenthereal",
      "followers_url": "https://api.github.com/users/owenthereal/followers",
      "following_url": "https://api.github.com/users/owenthereal/following{/other_user}",
      "gists_url": "https://api.github.com/users/owenthereal/gists{/gist_id}",
      "starred_url": "https://api.github.com/users/owenthereal/starred{/owner}{/repo}",
      "subscriptions_url": "https://api.github.com/users/owenthereal/subscriptions",
      "organizations_url": "https://api.github.com/users/owenthereal/orgs",
      "repos_url": "https://api.github.com/users/owenthereal/repos",
      "events_url": "https://api.github.com/users/owenthereal/events{/privacy}",
      "received_events_url": "https://api.github.com/users/owenthereal/received_events",
      "type": "User",
      "site_admin": false
    },
    "committer": {
      "login": "nicowilliams",
      "id": 604851,
      "node_id": "MDQ6VXNlcjYwNDg1MQ==",
      "avatar_url": "https://avatars.githubusercontent.com/u/604851?v=4",
      "gravatar_id": "",
      "url": "https://api.github.com/users/nicowilliams",
      "html_url": "https://github.com/nicowilliams",
      "followers_url": "https://api.github.com/users/nicowilliams/followers",
      "following_url": "https://api.github.com/users/nicowilliams/following{/other_user}",
      "gists_url": "https://api.github.com/users/nicowilliams/gists{/gist_id}",
      "starred_url": "https://api.github.com/users/nicowilliams/starred{/owner}{/repo}",
      "subscriptions_url": "https://api.github.com/users/nicowilliams/subscriptions",
      "organizations_url": "https://api.github.com/users/nicowilliams/orgs",
      "repos_url": "https://api.github.com/users/nicowilliams/repos",
      "events_url": "https://api.github.com/users/nicowilliams/events{/privacy}",
      "received_events_url": "https://api.github.com/users/nicowilliams/received_events",
      "type": "User",
      "site_admin": false
    },
    "parents": [
      {
        "sha": "6c24c71ddb32441de28521203ade7d3737203b29",
        "url": "https://api.github.com/repos/stedolan/jq/commits/6c24c71ddb32441de28521203ade7d3737203b29",
        "html_url": "https://github.com/stedolan/jq/commit/6c24c71ddb32441de28521203ade7d3737203b29"
      }
    ]
  },
  {
    "sha": "6c24c71ddb32441de28521203ade7d3737203b29",
    "node_id": "C_kwDOAE3WVdoAKDZjMjRjNzFkZGIzMjQ0MWRlMjg1MjEyMDNhZGU3ZDM3MzcyMDNiMjk",
    "commit": {
      "author": {
        "name": "Owen Ou",
        "email": "169064+owenthereal@users.noreply.github.com",
        "date": "2022-04-03T02:08:34Z"
      },
      "committer": {
        "name": "Nico Williams",
        "email": "nico@cryptonector.com",
        "date": "2022-04-04T17:04:12Z"
      },
      "message": "Update my contributor info\n\nMy GitHub profile is at https://github.com/owenthereal",
      "tree": {
        "sha": "282d9af9e0cf4e564a3ae891dd3143c1426c8a27",
        "url": "https://api.github.com/repos/stedolan/jq/git/trees/282d9af9e0cf4e564a3ae891dd3143c1426c8a27"
      },
      "url": "https://api.github.com/repos/stedolan/jq/git/commits/6c24c71ddb32441de28521203ade7d3737203b29",
      "comment_count": 0,
      "verification": {
        "verified": false,
        "reason": "unsigned",
        "signature": null,
        "payload": null
      }
    },
    "url": "https://api.github.com/repos/stedolan/jq/commits/6c24c71ddb32441de28521203ade7d3737203b29",
    "html_url": "https://github.com/stedolan/jq/commit/6c24c71ddb32441de28521203ade7d3737203b29",
    "comments_url": "https://api.github.com/repos/stedolan/jq/commits/6c24c71ddb32441de28521203ade7d3737203b29/comments",
    "author": {
      "login": "owenthereal",
      "id": 169064,
      "node_id": "MDQ6VXNlcjE2OTA2NA==",
      "avatar_url": "https://avatars.githubusercontent.com/u/169064?v=4",
      "gravatar_id": "",
      "url": "https://api.github.com/users/owenthereal",
      "html_url": "https://github.com/owenthereal",
      "followers_url": "https://api.github.com/users/owenthereal/followers",
      "following_url": "https://api.github.com/users/owenthereal/following{/other_user}",
      "gists_url": "https://api.github.com/users/owenthereal/gists{/gist_id}",
      "starred_url": "https://api.github.com/users/owenthereal/starred{/owner}{/repo}",
      "subscriptions_url": "https://api.github.com/users/owenthereal/subscriptions",
      "organizations_url": "https://api.github.com/users/owenthereal/orgs",
      "repos_url": "https://api.github.com/users/owenthereal/repos",
      "events_url": "https://api.github.com/users/owenthereal/events{/privacy}",
      "received_events_url": "https://api.github.com/users/owenthereal/received_events",
      "type": "User",
      "site_admin": false
    },
    "committer": {
      "login": "nicowilliams",
      "id": 604851,
      "node_id": "MDQ6VXNlcjYwNDg1MQ==",
      "avatar_url": "https://avatars.githubusercontent.com/u/604851?v=4",
      "gravatar_id": "",
      "url": "https://api.github.com/users/nicowilliams",
      "html_url": "https://github.com/nicowilliams",
      "followers_url": "https://api.github.com/users/nicowilliams/followers",
      "following_url": "https://api.github.com/users/nicowilliams/following{/other_user}",
      "gists_url": "https://api.github.com/users/nicowilliams/gists{/gist_id}",
      "starred_url": "https://api.github.com/users/nicowilliams/starred{/owner}{/repo}",
      "subscriptions_url": "https://api.github.com/users/nicowilliams/subscriptions",
      "organizations_url": "https://api.github.com/users/nicowilliams/orgs",
      "repos_url": "https://api.github.com/users/nicowilliams/repos",
      "events_url": "https://api.github.com/users/nicowilliams/events{/privacy}",
      "received_events_url": "https://api.github.com/users/nicowilliams/received_events",
      "type": "User",
      "site_admin": false
    },
    "parents": [
      {
        "sha": "a9f97e9e61a910a374a5d768244e8ad63f407d3e",
        "url": "https://api.github.com/repos/stedolan/jq/commits/a9f97e9e61a910a374a5d768244e8ad63f407d3e",
        "html_url": "https://github.com/stedolan/jq/commit/a9f97e9e61a910a374a5d768244e8ad63f407d3e"
      }
    ]
  },
  {
    "sha": "a9f97e9e61a910a374a5d768244e8ad63f407d3e",
    "node_id": "C_kwDOAE3WVdoAKGE5Zjk3ZTllNjFhOTEwYTM3NGE1ZDc2ODI0NGU4YWQ2M2Y0MDdkM2U",
    "commit": {
      "author": {
        "name": "Nicolas Williams",
        "email": "nico@cryptonector.com",
        "date": "2021-10-21T05:17:39Z"
      },
      "committer": {
        "name": "Nicolas Williams",
        "email": "nico@cryptonector.com",
        "date": "2021-10-24T21:23:26Z"
      },
      "message": "Fix accidentally quadratic behavior in _modify\n\nWe need to be careful to not grab an extra reference when mutating data\nstructures because that means we make extra copies.  Doing that every\ntime in `_modify` is really painful, as that function implements `|=`\nand all modify-assign operators.\n\n`jv_setpath()` also grabs additional references, so this is not the only\nfix needed for the modify-assign operators to not be accidentally\nquadratic.\n\nWe have to use `LOADVN` in order to make this fix possible, so we should\nreally byte-code `_modify` rather than jq-code it.  However, as a\nstop-gap to make this fix easier, I'm adding syntax for referring to a\n`$binding` such that you get `LOADVN` instead of `LOADV`.\n\nThis syntax is not meant to be used outside jq's internals!  Therefore\nit is not documented.  I promise to break it later, so don't use it!\n\nTBD, but later:\n\n - Optimize `_modify` for the case where `update` outputs more than one\n   value.\n\n   This is trivial: add a `setpath($p; null)` in the middle of `_modify`\n   before calling `update`.  But unfortunately the VM retains a\n   reference to `value_at_path` for path expression checking, and fixing\n   that will require more work.",
      "tree": {
        "sha": "7883361d86bd97b1bcd2299fa5886182b27cee54",
        "url": "https://api.github.com/repos/stedolan/jq/git/trees/7883361d86bd97b1bcd2299fa5886182b27cee54"
      },
      "url": "https://api.github.com/repos/stedolan/jq/git/commits/a9f97e9e61a910a374a5d768244e8ad63f407d3e",
      "comment_count": 0,
      "verification": {
        "verified": false,
        "reason": "unsigned",
        "signature": null,
        "payload": null
      }
    },
    "url": "https://api.github.com/repos/stedolan/jq/commits/a9f97e9e61a910a374a5d768244e8ad63f407d3e",
    "html_url": "https://github.com/stedolan/jq/commit/a9f97e9e61a910a374a5d768244e8ad63f407d3e",
    "comments_url": "https://api.github.com/repos/stedolan/jq/commits/a9f97e9e61a910a374a5d768244e8ad63f407d3e/comments",
    "author": {
      "login": "nicowilliams",
      "id": 604851,
      "node_id": "MDQ6VXNlcjYwNDg1MQ==",
      "avatar_url": "https://avatars.githubusercontent.com/u/604851?v=4",
      "gravatar_id": "",
      "url": "https://api.github.com/users/nicowilliams",
      "html_url": "https://github.com/nicowilliams",
      "followers_url": "https://api.github.com/users/nicowilliams/followers",
      "following_url": "https://api.github.com/users/nicowilliams/following{/other_user}",
      "gists_url": "https://api.github.com/users/nicowilliams/gists{/gist_id}",
      "starred_url": "https://api.github.com/users/nicowilliams/starred{/owner}{/repo}",
      "subscriptions_url": "https://api.github.com/users/nicowilliams/subscriptions",
      "organizations_url": "https://api.github.com/users/nicowilliams/orgs",
      "repos_url": "https://api.github.com/users/nicowilliams/repos",
      "events_url": "https://api.github.com/users/nicowilliams/events{/privacy}",
      "received_events_url": "https://api.github.com/users/nicowilliams/received_events",
      "type": "User",
      "site_admin": false
    },
    "committer": {
      "login": "nicowilliams",
      "id": 604851,
      "node_id": "MDQ6VXNlcjYwNDg1MQ==",
      "avatar_url": "https://avatars.githubusercontent.com/u/604851?v=4",
      "gravatar_id": "",
      "url": "https://api.github.com/users/nicowilliams",
      "html_url": "https://github.com/nicowilliams",
      "followers_url": "https://api.github.com/users/nicowilliams/followers",
      "following_url": "https://api.github.com/users/nicowilliams/following{/other_user}",
      "gists_url": "https://api.github.com/users/nicowilliams/gists{/gist_id}",
      "starred_url": "https://api.github.com/users/nicowilliams/starred{/owner}{/repo}",
      "subscriptions_url": "https://api.github.com/users/nicowilliams/subscriptions",
      "organizations_url": "https://api.github.com/users/nicowilliams/orgs",
      "repos_url": "https://api.github.com/users/nicowilliams/repos",
      "events_url": "https://api.github.com/users/nicowilliams/events{/privacy}",
      "received_events_url": "https://api.github.com/users/nicowilliams/received_events",
      "type": "User",
      "site_admin": false
    },
    "parents": [
      {
        "sha": "0c3455d3290fa03da8c01c135dd7126a80ed28a8",
        "url": "https://api.github.com/repos/stedolan/jq/commits/0c3455d3290fa03da8c01c135dd7126a80ed28a8",
        "html_url": "https://github.com/stedolan/jq/commit/0c3455d3290fa03da8c01c135dd7126a80ed28a8"
      }
    ]
  },
  {
    "sha": "0c3455d3290fa03da8c01c135dd7126a80ed28a8",
    "node_id": "C_kwDOAE3WVdoAKDBjMzQ1NWQzMjkwZmEwM2RhOGMwMWMxMzVkZDcxMjZhODBlZDI4YTg",
    "commit": {
      "author": {
        "name": "Nicolas Williams",
        "email": "nico@cryptonector.com",
        "date": "2021-10-21T05:15:12Z"
      },
      "committer": {
        "name": "Nicolas Williams",
        "email": "nico@cryptonector.com",
        "date": "2021-10-24T21:23:26Z"
      },
      "message": "Fix accidentally quadratic behavior in setpath\n\nWe need to be careful to not grab an extra reference when mutating\ndata structures because that means we make extra copies.  Doing that\nevery time in `jv_setpath()` is really painful, as that function is used\nin `_modify/2`, which is used in `|=` and all modify-assign operators.\n\n`_modify` also grabs additional references, so this is not the only fix\nneeded for the modify-assign operators to not be accidentally quadratic.",
      "tree": {
        "sha": "2afb78228b16aaf0d28d5118edb8daab3b79234b",
        "url": "https://api.github.com/repos/stedolan/jq/git/trees/2afb78228b16aaf0d28d5118edb8daab3b79234b"
      },
      "url": "https://api.github.com/repos/stedolan/jq/git/commits/0c3455d3290fa03da8c01c135dd7126a80ed28a8",
      "comment_count": 0,
      "verification": {
        "verified": false,
        "reason": "unsigned",
        "signature": null,
        "payload": null
      }
    },
    "url": "https://api.github.com/repos/stedolan/jq/commits/0c3455d3290fa03da8c01c135dd7126a80ed28a8",
    "html_url": "https://github.com/stedolan/jq/commit/0c3455d3290fa03da8c01c135dd7126a80ed28a8",
    "comments_url": "https://api.github.com/repos/stedolan/jq/commits/0c3455d3290fa03da8c01c135dd7126a80ed28a8/comments",
    "author": {
      "login": "nicowilliams",
      "id": 604851,
      "node_id": "MDQ6VXNlcjYwNDg1MQ==",
      "avatar_url": "https://avatars.githubusercontent.com/u/604851?v=4",
      "gravatar_id": "",
      "url": "https://api.github.com/users/nicowilliams",
      "html_url": "https://github.com/nicowilliams",
      "followers_url": "https://api.github.com/users/nicowilliams/followers",
      "following_url": "https://api.github.com/users/nicowilliams/following{/other_user}",
      "gists_url": "https://api.github.com/users/nicowilliams/gists{/gist_id}",
      "starred_url": "https://api.github.com/users/nicowilliams/starred{/owner}{/repo}",
      "subscriptions_url": "https://api.github.com/users/nicowilliams/subscriptions",
      "organizations_url": "https://api.github.com/users/nicowilliams/orgs",
      "repos_url": "https://api.github.com/users/nicowilliams/repos",
      "events_url": "https://api.github.com/users/nicowilliams/events{/privacy}",
      "received_events_url": "https://api.github.com/users/nicowilliams/received_events",
      "type": "User",
      "site_admin": false
    },
    "committer": {
      "login": "nicowilliams",
      "id": 604851,
      "node_id": "MDQ6VXNlcjYwNDg1MQ==",
      "avatar_url": "https://avatars.githubusercontent.com/u/604851?v=4",
      "gravatar_id": "",
      "url": "https://api.github.com/users/nicowilliams",
      "html_url": "https://github.com/nicowilliams",
      "followers_url": "https://api.github.com/users/nicowilliams/followers",
      "following_url": "https://api.github.com/users/nicowilliams/following{/other_user}",
      "gists_url": "https://api.github.com/users/nicowilliams/gists{/gist_id}",
      "starred_url": "https://api.github.com/users/nicowilliams/starred{/owner}{/repo}",
      "subscriptions_url": "https://api.github.com/users/nicowilliams/subscriptions",
      "organizations_url": "https://api.github.com/users/nicowilliams/orgs",
      "repos_url": "https://api.github.com/users/nicowilliams/repos",
      "events_url": "https://api.github.com/users/nicowilliams/events{/privacy}",
      "received_events_url": "https://api.github.com/users/nicowilliams/received_events",
      "type": "User",
      "site_admin": false
    },
    "parents": [
      {
        "sha": "1a1804afcb88cdc3f1f0e74e83385146b55ae205",
        "url": "https://api.github.com/repos/stedolan/jq/commits/1a1804afcb88cdc3f1f0e74e83385146b55ae205",
        "html_url": "https://github.com/stedolan/jq/commit/1a1804afcb88cdc3f1f0e74e83385146b55ae205"
      }
    ]
  },
  {
    "sha": "1a1804afcb88cdc3f1f0e74e83385146b55ae205",
    "node_id": "C_kwDOAE3WVdoAKDFhMTgwNGFmY2I4OGNkYzNmMWYwZTc0ZTgzMzg1MTQ2YjU1YWUyMDU",
    "commit": {
      "author": {
        "name": "Nicolas Williams",
        "email": "nico@cryptonector.com",
        "date": "2021-10-24T20:26:08Z"
      },
      "committer": {
        "name": "Nicolas Williams",
        "email": "nico@cryptonector.com",
        "date": "2021-10-24T21:23:26Z"
      },
      "message": "Fix LOADV/LOADVN refcount printing",
      "tree": {
        "sha": "bff7daeb282547034e7198b0f645e52142a1af11",
        "url": "https://api.github.com/repos/stedolan/jq/git/trees/bff7daeb282547034e7198b0f645e52142a1af11"
      },
      "url": "https://api.github.com/repos/stedolan/jq/git/commits/1a1804afcb88cdc3f1f0e74e83385146b55ae205",
      "comment_count": 0,
      "verification": {
        "verified": false,
        "reason": "unsigned",
        "signature": null,
        "payload": null
      }
    },
    "url": "https://api.github.com/repos/stedolan/jq/commits/1a1804afcb88cdc3f1f0e74e83385146b55ae205",
    "html_url": "https://github.com/stedolan/jq/commit/1a1804afcb88cdc3f1f0e74e83385146b55ae205",
    "comments_url": "https://api.github.com/repos/stedolan/jq/commits/1a1804afcb88cdc3f1f0e74e83385146b55ae205/comments",
    "author": {
      "login": "nicowilliams",
      "id": 604851,
      "node_id": "MDQ6VXNlcjYwNDg1MQ==",
      "avatar_url": "https://avatars.githubusercontent.com/u/604851?v=4",
      "gravatar_id": "",
      "url": "https://api.github.com/users/nicowilliams",
      "html_url": "https://github.com/nicowilliams",
      "followers_url": "https://api.github.com/users/nicowilliams/followers",
      "following_url": "https://api.github.com/users/nicowilliams/following{/other_user}",
      "gists_url": "https://api.github.com/users/nicowilliams/gists{/gist_id}",
      "starred_url": "https://api.github.com/users/nicowilliams/starred{/owner}{/repo}",
      "subscriptions_url": "https://api.github.com/users/nicowilliams/subscriptions",
      "organizations_url": "https://api.github.com/users/nicowilliams/orgs",
      "repos_url": "https://api.github.com/users/nicowilliams/repos",
      "events_url": "https://api.github.com/users/nicowilliams/events{/privacy}",
      "received_events_url": "https://api.github.com/users/nicowilliams/received_events",
      "type": "User",
      "site_admin": false
    },
    "committer": {
      "login": "nicowilliams",
      "id": 604851,
      "node_id": "MDQ6VXNlcjYwNDg1MQ==",
      "avatar_url": "https://avatars.githubusercontent.com/u/604851?v=4",
      "gravatar_id": "",
      "url": "https://api.github.com/users/nicowilliams",
      "html_url": "https://github.com/nicowilliams",
      "followers_url": "https://api.github.com/users/nicowilliams/followers",
      "following_url": "https://api.github.com/users/nicowilliams/following{/other_user}",
      "gists_url": "https://api.github.com/users/nicowilliams/gists{/gist_id}",
      "starred_url": "https://api.github.com/users/nicowilliams/starred{/owner}{/repo}",
      "subscriptions_url": "https://api.github.com/users/nicowilliams/subscriptions",
      "organizations_url": "https://api.github.com/users/nicowilliams/orgs",
      "repos_url": "https://api.github.com/users/nicowilliams/repos",
      "events_url": "https://api.github.com/users/nicowilliams/events{/privacy}",
      "received_events_url": "https://api.github.com/users/nicowilliams/received_events",
      "type": "User",
      "site_admin": false
    },
    "parents": [
      {
        "sha": "582717a7b4af6ce0e231b9aee090107235ef2d0f",
        "url": "https://api.github.com/repos/stedolan/jq/commits/582717a7b4af6ce0e231b9aee090107235ef2d0f",
        "html_url": "https://github.com/stedolan/jq/commit/582717a7b4af6ce0e231b9aee090107235ef2d0f"
      }
    ]
  }
]
"""
    let doc = JsonDoc

    try
      // parsing
      doc.parse(obj)?

      // extracting values from a JSON structure
      let json: JsonArray  = doc.data as JsonArray

      try
        env.err.print("trying PJQ")
        env.err.print(PJQ([json]).iter()("commit")("author")("name").result(0)? as String)
      else
        env.err.print("PJQ failed")
      end

      var test: String = ""

      // jq '.foo'
      // Input	{"foo": 42, "bar": "less interesting data"}
      // Output	42
      test = "test 1"
      
      try
        let pjq = PJQ.from_string("""
{"foo": 42, "bar": "less interesting data"}
""")?

        env.err.print(test + ": " + (pjq("foo").result(0)? as I64 == 42).string())
      else
        env.err.print(test + " ERROR")
      end

      // jq '.foo'
      // Input	{"notfoo": true, "alsonotfoo": false}
      // Output	null
      test = "test 2"
      
      try
        let pjq = PJQ.from_string("""
{"notfoo": true, "alsonotfoo": false}
""")?

        env.err.print(test + ": " + (pjq("foo").result.size() == 0).string())
      else
        env.err.print(test + " ERROR")
      end

      // jq '.[0]'
      // Input	[{"name": "JSON", "good": true}, {"name": "XML", "good": false}]
      // Output	{"name": "JSON", "good": true}
      test = "test 3"
      
      try
        let pjq = PJQ.from_string("""
[{"name": "JSON", "good": true}, {"name": "XML", "good": false}]
""")?

        env.err.print(test + ": " + (pjq(0).result.size() == 1).string())
        env.err.print(test + ": " + (((pjq(0).result(0)? as JsonObject).data("name")? as String) == "JSON").string())
        env.err.print(test + ": " + (((pjq(0).result(0)? as JsonObject).data("good")? as Bool) == true).string())
      else
        env.err.print(test + " ERROR")
      end

      // jq '.[]'
      // Input	[{"name": "JSON", "good": true}, {"name": "XML", "good": false}]
      // Output	{"name": "JSON", "good": true}
      //        {"name": "XML", "good": false}
      test = "test 4"
      
      try
        let pjq = PJQ.from_string("""
[{"name": "JSON", "good": true}, {"name": "XML", "good": false}]
""")?

        let result = pjq.iter().result
        env.err.print(test + ": " + (result.size() == 2).string())
        env.err.print(test + ": " + (((result(0)? as JsonObject).data("name")? as String) == "JSON").string())
        env.err.print(test + ": " + (((result(0)? as JsonObject).data("good")? as Bool) == true).string())
        env.err.print(test + ": " + (((result(1)? as JsonObject).data("name")? as String) == "XML").string())
        env.err.print(test + ": " + (((result(1)? as JsonObject).data("good")? as Bool) == false).string())
      else
        env.err.print(test + " ERROR")
      end

      // jq '.[]'
      // Input	[]
      // Output	[]
      test = "test 5"
      
      try
        let pjq = PJQ.from_string("""
[]
""")?

        let result = pjq.iter().result
        env.err.print(test + ": " + (result.size() == 0).string())
      else
        env.err.print(test + " ERROR")
      end

      // jq '.[]'
      // Input	{"a": 1, "b": 1}
      // Output	1
      //        2
      test = "test 6"
      
      try
        let pjq = PJQ.from_string("""
{"a": 1, "b": 1}
""")?

        let result = pjq.iter().result
        env.err.print(test + ": " + (result.size() == 2).string())
        env.err.print(test + ": " + ((result(0)? as I64) == 1).string())
        env.err.print(test + ": " + ((result(1)? as I64) == 1).string())
      else
        env.err.print(test + " ERROR")
      end

      // jq '.foo, .bar'
      // Input	{"foo": 42, "bar": "something else", "baz": true}
      // Output	42
      //        "something else"
      test = "test 7"
      
      try
        let pjq = PJQ.from_string("""
{"foo": 42, "bar": "something else", "baz": true}
""")?

        let result = pjq.concat({(pjq) => pjq("foo")}, {(pjq) => pjq("bar")}).result
        env.err.print(test + ": " + (result.size() == 2).string())
        env.err.print(test + ": " + ((result(0)? as I64) == 42).string())
        env.err.print(test + ": " + ((result(1)? as String) == "something else").string())
      else
        env.err.print(test + " ERROR")
      end

      // jq '.users, .projects'
      // Input	{"user":"stedolan", "projects": ["jq", "wikiflow"]}
      // Output	"stedolan"
      //        "jq"
      //        "workflow"
      test = "test 8"
      
      try
        let pjq = PJQ.from_string("""
{"user":"stedolan", "projects": ["jq", "wikiflow"]}
""")?

        let result = pjq.concat({(pjq) => pjq("user")}, {(pjq) => pjq("projects").iter()}).result
        env.err.print(test + ": " + (result.size() == 3).string())
        env.err.print(test + ": " + ((result(0)? as String) == "stedolan").string())
        env.err.print(test + ": " + ((result(1)? as String) == "jq").string())
        env.err.print(test + ": " + ((result(2)? as String) == "wikiflow").string())
      else
        env.err.print(test + " ERROR")
      end

      // jq '[.users, .projects[]]'
      // Input	{"user":"stedolan", "projects": ["jq", "wikiflow"]}
      // Output	["stedolan", "jq", "workflow"]
      test = "test 9"
      
      try
        let pjq = PJQ.from_string("""
{"user":"stedolan", "projects": ["jq", "wikiflow"]}
""")?

        let result = pjq.concat({(pjq) => pjq("user")}, {(pjq) => pjq("projects").iter()}).array().result
        env.err.print(test + ": " + (result.size() == 1).string())

        let ja = result(0)? as JsonArray
        
        env.err.print(test + ": " + ((ja.data(0)? as String) == "stedolan").string())
        env.err.print(test + ": " + ((ja.data(1)? as String) == "jq").string())
        env.err.print(test + ": " + ((ja.data(2)? as String) == "wikiflow").string())
      else
        env.err.print(test + " ERROR")
      end

      // jq '{user: .user, title: .titles[]}'
      // Input	{"user":"stedolan", "titles": ["JQ Primer", "More JQ"]}
      // Output	{"user":"stedolan", "title": "JQ Primer"}
      // {"user":"stedolan", "title": "More JQ"}

      test = "test 10"
      
      try
        let pjq = PJQ.from_string("""
{"user":"stedolan", "titles": ["JQ Primer", "More JQ"]}
""")?

        let result = pjq.construct([("user", {(pjq: PJQ): PJQ => pjq("user")}); ("title", {(pjq: PJQ): PJQ => pjq("titles").iter()})]).result
        env.err.print(test + ": " + (result.size() == 2).string())

        let r0 = result(0)? as JsonObject
        let r1 = result(1)? as JsonObject

        env.err.print(test + ": " + ((r0.data("user")? as String) == "stedolan").string())
        env.err.print(test + ": " + ((r0.data("title")? as String) == "JQ Primer").string())
        env.err.print(test + ": " + ((r1.data("user")? as String) == "stedolan").string())
        env.err.print(test + ": " + ((r1.data("title")? as String) == "More JQ").string())
      else
        env.err.print(test + " ERROR")
      end

    end
