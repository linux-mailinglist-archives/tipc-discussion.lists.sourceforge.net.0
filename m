Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 876D4323D8C
	for <lists+tipc-discussion@lfdr.de>; Wed, 24 Feb 2021 14:18:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lEu3h-0003Rg-Oy; Wed, 24 Feb 2021 13:18:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1lEu3g-0003RU-J2
 for tipc-discussion@lists.sourceforge.net; Wed, 24 Feb 2021 13:18:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u1zNYYOY/mmG0sOtF6faE3FX3gOIMiS2HPZGXL9Dybw=; b=JIbvlpFhg0fUWfaWYaHSj7hH/v
 aZGLeHky+JnYOTYjYun/+s8v26YYmyn+vGyIbQCA16kEEqYp9JHwQYeGWEUon1zR6ragwrtFd399W
 iN5F1B7HJmYq7rXWcfQHHCoKQG7sAlmm8R5TyJbntnPaAc/18PfD1V+CWf9UjZo9LzYk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=u1zNYYOY/mmG0sOtF6faE3FX3gOIMiS2HPZGXL9Dybw=; b=NchmgPmf8tc69Jcf7x6rI06lZx
 RBum2OAHmAYz4SfPnKivI80UU1W8q/Wf1fNK9QBobEVzlw+0LRfVy/KYvl0NVwXbUtSkvzLr9iYn0
 +xlyZJhorVXjHZ+OnnOn707d7VcXHLiCdHhpY0urp2Ceng6gXVpTiwfkAnTNswuTCqVc=;
Received: from mail-wr1-f42.google.com ([209.85.221.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lEu3R-0002X1-0H
 for tipc-discussion@lists.sourceforge.net; Wed, 24 Feb 2021 13:18:28 +0000
Received: by mail-wr1-f42.google.com with SMTP id w11so1845006wrr.10
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 24 Feb 2021 05:18:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=u1zNYYOY/mmG0sOtF6faE3FX3gOIMiS2HPZGXL9Dybw=;
 b=Ly5fMicXjRwRcso9QAEE/98h52w9zWLJperDlpeN4wiun0rkDzb0UJnpDiI0SJrmkE
 f0lWYIBAoX+crvGBdHfqKTqX1l3ufIFvOx+e3krbBUUNQCFixF3KN2niJIOj+qx/Lpt0
 PA8mxbC455RPlLbXcb+RMkKGlQAkqZQzjoOn6mJRPYWQ5l09hddjRE0lEHE0SMOJXD5w
 Tsc9Yg7BCKzS57cKUDXFYJzRjPD65nU6qMu4gUlZmjLwEAx7Qp4Q6EKsqITJkG2ftKhK
 mp+uEY2NMEuMfsZ3l9zQqEOsDgTURUHo5EF8GcxPL70gZeR2Ne4xLAUpdzsyfJl3AwHM
 o9vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=u1zNYYOY/mmG0sOtF6faE3FX3gOIMiS2HPZGXL9Dybw=;
 b=BkgXjzakXimnSwyBhWGyg4N99UYYIrXzbTnuLjY1zBUGEOUBJv6EFVUihrUmWKhSOL
 fAapuXGuqkNpqj3pphY6uFdjP6Y5DBKrJGu+bNlIg/YTvrRdkMlWHMJKWgDH0sp074GM
 UEy4FXNfr19Khs3U1fFSMThBArtmd+tJawYvoEs/PHT9wXcYzcX54JArRgn57ppTKQwU
 dQwKclAzQeioiYpQk7mCAU241yrqbyx1VJegUBpfngFNRgMGYis0mxbfDYuc21TfJufP
 lPb3YNu3YBo8Ligg/75owfgnUIIe8kFqEGES2R1+o8ZI8KhA5uoOpguv2eooAVCt5pCr
 Ousw==
X-Gm-Message-State: AOAM531LyfxlM8qgvs6A2+Xwy1kXdw16dZzLngch0izFk0K8wux1sKna
 WAvjAGEk7j2yhjUWFxHAck72x5TAgWF/WlDWMMA=
X-Google-Smtp-Source: ABdhPJycFDoNKveGo1BYYICMwqFgks7qGCqsg9Ir8CzjUJQzSUlKYdqiH8RHRctcvoa8wEjIdGrzi0eEdsI7ujvVF0A=
X-Received: by 2002:a5d:5043:: with SMTP id h3mr2738289wrt.120.1614172686617; 
 Wed, 24 Feb 2021 05:18:06 -0800 (PST)
MIME-Version: 1.0
References: <20201208185012.265508-1-jmaloy@redhat.com>
 <20201208185012.265508-9-jmaloy@redhat.com>
In-Reply-To: <20201208185012.265508-9-jmaloy@redhat.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Wed, 24 Feb 2021 21:17:55 +0800
Message-ID: <CADvbK_efO+FNedYkC660=RLs5v7piU15PxJQK7vwm-rAfYeGdw@mail.gmail.com>
To: Jon Maloy <jmaloy@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.42 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lEu3R-0002X1-0H
Subject: Re: [tipc-discussion] [net-next 08/16] tipc: refactor
 tipc_sendmsg() and tipc_lookup_anycast()
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: xinl@redhat.com, tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On Wed, Dec 9, 2020 at 2:51 AM <jmaloy@redhat.com> wrote:
>
> From: Jon Maloy <jmaloy@redhat.com>
>
> We simplify the signature if function tipc_nametbl_lookup_anycast(),
> using address structures instead of dicrete integers.
>
> This also makes it possible to make some improvements to the functions
> __tipc_sendmsg() in socket.c and tipc_msg_lookup_dest() in msg.c.
>
> Signed-off-by: Jon Maloy <jmaloy@redhat.com>
> ---
>  net/tipc/msg.c        | 23 ++++++------
>  net/tipc/name_table.c | 75 +++++++++++++++++++-------------------
>  net/tipc/name_table.h |  5 ++-
>  net/tipc/socket.c     | 83 +++++++++++++++++++++----------------------
>  4 files changed, 91 insertions(+), 95 deletions(-)
>
> diff --git a/net/tipc/msg.c b/net/tipc/msg.c
> index 9eddbddb2fec..931245e93830 100644
> --- a/net/tipc/msg.c
> +++ b/net/tipc/msg.c
> @@ -711,8 +711,11 @@ bool tipc_msg_skb_clone(struct sk_buff_head *msg, struct sk_buff_head *cpy)
>  bool tipc_msg_lookup_dest(struct net *net, struct sk_buff *skb, int *err)
>  {
>         struct tipc_msg *msg = buf_msg(skb);
> -       u32 dport, dnode;
> -       u32 onode = tipc_own_addr(net);
> +       u32 scope = msg_lookup_scope(msg);
> +       u32 self = tipc_own_addr(net);
> +       u32 inst = msg_nameinst(msg);
> +       struct tipc_socket_addr sk;
> +       struct tipc_uaddr ua;
>
>         if (!msg_isdata(msg))
>                 return false;
> @@ -726,16 +729,16 @@ bool tipc_msg_lookup_dest(struct net *net, struct sk_buff *skb, int *err)
>         msg = buf_msg(skb);
>         if (msg_reroute_cnt(msg))
>                 return false;
> -       dnode = tipc_scope2node(net, msg_lookup_scope(msg));
> -       dport = tipc_nametbl_lookup_anycast(net, msg_nametype(msg),
> -                                           msg_nameinst(msg), &dnode);
> -       if (!dport)
> +       tipc_uaddr(&ua, TIPC_SERVICE_RANGE, scope,
> +                  msg_nametype(msg), inst, inst);
> +       sk.node = tipc_scope2node(net, scope);
> +       if (!tipc_nametbl_lookup_anycast(net, &ua, &sk))
>                 return false;
>         msg_incr_reroute_cnt(msg);
> -       if (dnode != onode)
> -               msg_set_prevnode(msg, onode);
> -       msg_set_destnode(msg, dnode);
> -       msg_set_destport(msg, dport);
> +       if (sk.node != self)
> +               msg_set_prevnode(msg, self);
> +       msg_set_destnode(msg, sk.node);
> +       msg_set_destport(msg, sk.ref);
>         *err = TIPC_OK;
>
>         return true;
> diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
> index e6177ccf1140..ed68db36bab9 100644
> --- a/net/tipc/name_table.c
> +++ b/net/tipc/name_table.c
> @@ -549,66 +549,64 @@ struct publication *tipc_nametbl_remove_publ(struct net *net,
>  /**
>   * tipc_nametbl_lookup_anycast - perform service instance to socket translation
>   * @net: network namespace
> - * @type: message type
> - * @instance: message instance
> - * @dnode: the search domain used during translation
> - *
> - * On entry, 'dnode' is the search domain used during the lookup
> + * @ua: service address to look ip
> + * @sk: address to socket we want to find
>   *
> + * On entry, a non-zero 'sk->node' indicates the node where we want lookup to be
> + * performed, which may not be this one.
>   * On exit:
> - * - if lookup is deferred to another node, leave 'dnode' unchanged and return 0
> - * - if lookup is attempted and succeeds, set 'dnode' to the publishing node and
> - *   return the published (non-zero) port number
> - * - if lookup is attempted and fails, set 'dnode' to 0 and return 0
> + * - If lookup is deferred to another node, leave 'sk->node' unchanged and
> + *   return 'true'.
> + * - If lookup is successful, set the 'sk->node' and 'sk->ref' (== portid) which
> + *   represent the bound socket and return 'true'.
> + * - If lookup fails, return 'false'
>   *
>   * Note that for legacy users (node configured with Z.C.N address format) the
> - * 'closest-first' lookup algorithm must be maintained, i.e., if dnode is 0
> + * 'closest-first' lookup algorithm must be maintained, i.e., if sk.node is 0
>   * we must look in the local binding list first
>   */
> -u32 tipc_nametbl_lookup_anycast(struct net *net, u32 type,
> -                               u32 instance, u32 *dnode)
> +bool tipc_nametbl_lookup_anycast(struct net *net,
> +                                struct tipc_uaddr *ua,
> +                                struct tipc_socket_addr *sk)
>  {
>         struct tipc_net *tn = tipc_net(net);
>         bool legacy = tn->legacy_addr_format;
>         u32 self = tipc_own_addr(net);
> -       struct service_range *sr;
> +       u32 inst = ua->sa.instance;
> +       struct service_range *r;
>         struct tipc_service *sc;
> -       struct list_head *list;
>         struct publication *p;
> -       u32 port = 0;
> -       u32 node = 0;
> +       struct list_head *l;
> +       bool res = false;
>
> -       if (!tipc_in_scope(legacy, *dnode, self))
> -               return 0;
> +       if (!tipc_in_scope(legacy, sk->node, self))
> +               return true;
>
>         rcu_read_lock();
> -       sc = tipc_service_find(net, type);
> +       sc = tipc_service_find(net, ua->sr.type);
>         if (unlikely(!sc))
>                 goto exit;
>
>         spin_lock_bh(&sc->lock);
> -       service_range_foreach_match(sr, sc, instance, instance) {
> +       service_range_foreach_match(r, sc, inst, inst) {
>                 /* Select lookup algo: local, closest-first or round-robin */
> -               if (*dnode == self) {
> -                       list = &sr->local_publ;
> -                       if (list_empty(list))
> +               if (sk->node == self) {
> +                       l = &r->local_publ;
> +                       if (list_empty(l))
>                                 continue;
> -                       p = list_first_entry(list, struct publication,
> -                                            local_publ);
> -                       list_move_tail(&p->local_publ, &sr->local_publ);
> -               } else if (legacy && !*dnode && !list_empty(&sr->local_publ)) {
> -                       list = &sr->local_publ;
> -                       p = list_first_entry(list, struct publication,
> -                                            local_publ);
> -                       list_move_tail(&p->local_publ, &sr->local_publ);
> +                       p = list_first_entry(l, struct publication, local_publ);
> +                       list_move_tail(&p->local_publ, &r->local_publ);
> +               } else if (legacy && !sk->node && !list_empty(&r->local_publ)) {
> +                       l = &r->local_publ;
> +                       p = list_first_entry(l, struct publication, local_publ);
> +                       list_move_tail(&p->local_publ, &r->local_publ);
>                 } else {
> -                       list = &sr->all_publ;
> -                       p = list_first_entry(list, struct publication,
> -                                            all_publ);
> -                       list_move_tail(&p->all_publ, &sr->all_publ);
> +                       l = &r->all_publ;
> +                       p = list_first_entry(l, struct publication, all_publ);
> +                       list_move_tail(&p->all_publ, &r->all_publ);
>                 }
> -               port = p->sk.ref;
> -               node = p->sk.node;
> +               *sk = p->sk;
> +               res = true;
>                 /* Todo: as for legacy, pick the first matching range only, a
>                  * "true" round-robin will be performed as needed.
>                  */
> @@ -618,8 +616,7 @@ u32 tipc_nametbl_lookup_anycast(struct net *net, u32 type,
>
>  exit:
>         rcu_read_unlock();
> -       *dnode = node;
> -       return port;
> +       return res;
>  }
>
>  /* tipc_nametbl_lookup_group(): lookup destinaton(s) in a communication group
> diff --git a/net/tipc/name_table.h b/net/tipc/name_table.h
> index 9f6e8efca00f..f5e37f90a2ba 100644
> --- a/net/tipc/name_table.h
> +++ b/net/tipc/name_table.h
> @@ -111,9 +111,8 @@ struct name_table {
>  };
>
>  int tipc_nl_name_table_dump(struct sk_buff *skb, struct netlink_callback *cb);
> -
> -u32 tipc_nametbl_lookup_anycast(struct net *net, u32 type, u32 instance,
> -                               u32 *node);
> +bool tipc_nametbl_lookup_anycast(struct net *net, struct tipc_uaddr *ua,
> +                                struct tipc_socket_addr *sk);
>  void tipc_nametbl_lookup_mcast_sockets(struct net *net, u32 type, u32 lower,
>                                        u32 upper, u32 scope, bool exact,
>                                    struct list_head *dports);
> diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> index 05cfe179458e..913b1a7be25b 100644
> --- a/net/tipc/socket.c
> +++ b/net/tipc/socket.c
> @@ -1424,44 +1424,43 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
>         struct sock *sk = sock->sk;
>         struct net *net = sock_net(sk);
>         struct tipc_sock *tsk = tipc_sk(sk);
> -       DECLARE_SOCKADDR(struct sockaddr_tipc *, dest, m->msg_name);
> +       struct tipc_uaddr *ua = (struct tipc_uaddr *)m->msg_name;
>         long timeout = sock_sndtimeo(sk, m->msg_flags & MSG_DONTWAIT);
>         struct list_head *clinks = &tsk->cong_links;
>         bool syn = !tipc_sk_type_connectionless(sk);
>         struct tipc_group *grp = tsk->group;
>         struct tipc_msg *hdr = &tsk->phdr;
> -       struct tipc_service_range *seq;
> +       struct tipc_socket_addr skaddr;
>         struct sk_buff_head pkts;
> -       u32 dport = 0, dnode = 0;
> -       u32 type = 0, inst = 0;
> -       int mtu, rc;
> +       int atype, mtu, rc;
>
>         if (unlikely(dlen > TIPC_MAX_USER_MSG_SIZE))
>                 return -EMSGSIZE;
>
> -       if (likely(dest)) {
> -               if (unlikely(m->msg_namelen < sizeof(*dest)))
> -                       return -EINVAL;
> -               if (unlikely(dest->family != AF_TIPC))
> +       if (ua) {
> +               if (!tipc_uaddr_valid(ua, m->msg_namelen))
>                         return -EINVAL;
> +                atype = ua->addrtype;
>         }
>
> +       /* If socket belongs to a communication group follow other paths */
>         if (grp) {
> -               if (!dest)
> +               if (!ua)
>                         return tipc_send_group_bcast(sock, m, dlen, timeout);
> -               if (dest->addrtype == TIPC_SERVICE_ADDR)
> +               if (atype == TIPC_SERVICE_ADDR)
>                         return tipc_send_group_anycast(sock, m, dlen, timeout);
> -               if (dest->addrtype == TIPC_SOCKET_ADDR)
> +               if (atype == TIPC_SOCKET_ADDR)
>                         return tipc_send_group_unicast(sock, m, dlen, timeout);
> -               if (dest->addrtype == TIPC_ADDR_MCAST)
> +               if (atype == TIPC_SERVICE_RANGE)
>                         return tipc_send_group_mcast(sock, m, dlen, timeout);
>                 return -EINVAL;
>         }
>
> -       if (unlikely(!dest)) {
> -               dest = &tsk->peer;
> -               if (!syn && dest->family != AF_TIPC)
> +       if (!ua) {
> +               ua = (struct tipc_uaddr *)&tsk->peer;
> +               if (!syn && ua->family != AF_TIPC)
>                         return -EDESTADDRREQ;
> +                atype = ua->addrtype;
>         }
>
>         if (unlikely(syn)) {
> @@ -1471,54 +1470,51 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
>                         return -EISCONN;
>                 if (tsk->published)
>                         return -EOPNOTSUPP;
> -               if (dest->addrtype == TIPC_SERVICE_ADDR) {
> -                       tsk->conn_type = dest->addr.name.name.type;
> -                       tsk->conn_instance = dest->addr.name.name.instance;
> +               if (atype == TIPC_SERVICE_ADDR) {
> +                       tsk->conn_type = ua->sa.type;
> +                       tsk->conn_instance = ua->sa.instance;
>                 }
>                 msg_set_syn(hdr, 1);
>         }
>
> -       seq = &dest->addr.nameseq;
> -       if (dest->addrtype == TIPC_ADDR_MCAST)
> -               return tipc_sendmcast(sock, seq, m, dlen, timeout);
> -
> -       if (dest->addrtype == TIPC_SERVICE_ADDR) {
> -               type = dest->addr.name.name.type;
> -               inst = dest->addr.name.name.instance;
> -               dnode = dest->addr.name.domain;
> -               dport = tipc_nametbl_lookup_anycast(net, type, inst, &dnode);
> -               if (unlikely(!dport && !dnode))
> +       /* Determine destination */
> +       if (atype == TIPC_SERVICE_RANGE) {
> +               return tipc_sendmcast(sock, &ua->sr, m, dlen, timeout);
> +       } else if (atype == TIPC_SERVICE_ADDR) {
> +               skaddr.node = ua->lookup_node;
> +               ua->scope = skaddr.node ? TIPC_NODE_SCOPE : TIPC_CLUSTER_SCOPE;
tipc_node2scope() can be deleted if it's not used here.

> +               if (!tipc_nametbl_lookup_anycast(net, ua, &skaddr))
>                         return -EHOSTUNREACH;
> -       } else if (dest->addrtype == TIPC_SOCKET_ADDR) {
> -               dnode = dest->addr.id.node;
> +       } else if (atype == TIPC_SOCKET_ADDR) {
> +               skaddr = ua->sk;
>         } else {
>                 return -EINVAL;
>         }
>
>         /* Block or return if destination link is congested */
>         rc = tipc_wait_for_cond(sock, &timeout,
> -                               !tipc_dest_find(clinks, dnode, 0));
> +                               !tipc_dest_find(clinks, skaddr.node, 0));
>         if (unlikely(rc))
>                 return rc;
>
> -       if (dest->addrtype == TIPC_SERVICE_ADDR) {
> +       /* Finally build message header */
> +       msg_set_destnode(hdr, skaddr.node);
> +       msg_set_destport(hdr, skaddr.ref);
> +       if (atype == TIPC_SERVICE_ADDR) {
>                 msg_set_type(hdr, TIPC_NAMED_MSG);
>                 msg_set_hdr_sz(hdr, NAMED_H_SIZE);
> -               msg_set_nametype(hdr, type);
> -               msg_set_nameinst(hdr, inst);
> -               msg_set_lookup_scope(hdr, tipc_node2scope(dnode));
> -               msg_set_destnode(hdr, dnode);
> -               msg_set_destport(hdr, dport);
> +               msg_set_nametype(hdr, ua->sa.type);
> +               msg_set_nameinst(hdr, ua->sa.instance);
> +               msg_set_lookup_scope(hdr, ua->scope);
>         } else { /* TIPC_SOCKET_ADDR */
>                 msg_set_type(hdr, TIPC_DIRECT_MSG);
>                 msg_set_lookup_scope(hdr, 0);
> -               msg_set_destnode(hdr, dnode);
> -               msg_set_destport(hdr, dest->addr.id.ref);
>                 msg_set_hdr_sz(hdr, BASIC_H_SIZE);
>         }
>
> +       /* Add message body */
>         __skb_queue_head_init(&pkts);
> -       mtu = tipc_node_get_mtu(net, dnode, tsk->portid, true);
> +       mtu = tipc_node_get_mtu(net, skaddr.node, tsk->portid, true);
>         rc = tipc_msg_build(hdr, m, 0, dlen, mtu, &pkts);
>         if (unlikely(rc != dlen))
>                 return rc;
> @@ -1527,10 +1523,11 @@ static int __tipc_sendmsg(struct socket *sock, struct msghdr *m, size_t dlen)
>                 return -ENOMEM;
>         }
>
> +       /* Send message */
>         trace_tipc_sk_sendmsg(sk, skb_peek(&pkts), TIPC_DUMP_SK_SNDQ, " ");
> -       rc = tipc_node_xmit(net, &pkts, dnode, tsk->portid);
> +       rc = tipc_node_xmit(net, &pkts, skaddr.node, tsk->portid);
>         if (unlikely(rc == -ELINKCONG)) {
> -               tipc_dest_push(clinks, dnode, 0);
> +               tipc_dest_push(clinks, skaddr.node, 0);
>                 tsk->cong_link_cnt++;
>                 rc = 0;
>         }
> --
> 2.28.0
>
>
>
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
