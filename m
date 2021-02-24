Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C979323E30
	for <lists+tipc-discussion@lfdr.de>; Wed, 24 Feb 2021 14:30:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lEuEw-00011Z-1v; Wed, 24 Feb 2021 13:30:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1lEuEu-00011D-FZ
 for tipc-discussion@lists.sourceforge.net; Wed, 24 Feb 2021 13:30:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JEyEzeI3fGK/ROxZ9QxWjiq5b8QVOyhte1J/ugOLVBk=; b=KlXVhTbIkAkLYkWSJ5WPhSCxe4
 kocn73bboV9Le7n0gjAr/VXOoxxQMOMqRtzSEFPuIU+s8jGfgSH1GrPY+Xlhpg1ucaJbU/j6W4oO/
 CVuIi1QxOumIpRYBCVAr/YSlV/VW5ue8rphTnYnGnp1Ya1EMUprh/m/rmb86PwS0hYlY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JEyEzeI3fGK/ROxZ9QxWjiq5b8QVOyhte1J/ugOLVBk=; b=MuOjZdjPek+fWFFoKcSlYmvTY6
 FQ5gwNKt3TwE0G20weK38XgY1IejNPvYTPYNej8igkVnYJv2Lv/ZZTbx2EezlmSf96RKrVmjAzhV0
 RYeKWQmEtbyNJNIK93AOsk3/1qOPqixLSzsAC1MveH5HuQsrzxUtcZKiAU2HH421n5QU=;
Received: from mail-wm1-f52.google.com ([209.85.128.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lEuEn-0002wL-Vh
 for tipc-discussion@lists.sourceforge.net; Wed, 24 Feb 2021 13:30:04 +0000
Received: by mail-wm1-f52.google.com with SMTP id m1so1841795wml.2
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 24 Feb 2021 05:29:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JEyEzeI3fGK/ROxZ9QxWjiq5b8QVOyhte1J/ugOLVBk=;
 b=MDLfdIoZzwR2ksbuOuLjpweIuosemUSX++RosQi4j8vQ/BC7OVTXxtWuKQjjY6w9z1
 QEwHR3BQuV9uaKKCZmY4Qj8BZpLoXpgTLofCNNJUrrUXWxOY1r9W+IAe25gyhEkVUy/F
 lmGadUBHFXzCH/Ecg6HWyWzVRpmha0NXhDPGkgaDch8/MJOT9GdN1oSJgY8iITWygxSp
 QNOhxvkU6Yt68AbK8FShSxvI4z3R3LJXKYX+HxaQPihDxigZk2BJR6RUfJrFK5L5oI/c
 w1t9/9Ec0wCEty0p9c0aoc6ffv2j5YVMSo08Xw03bKagJupAB51Lo+GOSUbLExJ57POB
 +hlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JEyEzeI3fGK/ROxZ9QxWjiq5b8QVOyhte1J/ugOLVBk=;
 b=shCdyJOQ3INODsNP/3EERTtK2XjQd4JlVt8vy7D1t9uUefNp0uhHwDF3N+EaAmRtMZ
 T2UrMaqgoQqqKEmwJ6CDH2EzbFZwJiNvQg1bgvbLMU7FPatn+jdNjwsr9d6mtrnhCM/Q
 SgfF2rFTCsXkyQt5V3OLC9UuACrM60TXPcNFxXThIgCrKmRQc2LqgSFJ+Vkt4OHam2o2
 vkp90szA+fad98ZSW33L+JYZA0+Ta+O0wHsqCJxPvj0BzFiDn+bpohmFoBZgSHqx8hrB
 xJjZJCxNbrrVS27bzI1Z9tu1YG8SpRj5bG4fFCUV7hStQdVu9z5A+Iz2X7+7qIfOJbeP
 A68g==
X-Gm-Message-State: AOAM5302Onej3MsihAhKRBhwtkHRjE3LBoL/FpX6jZaJztsK5d1/cXuh
 lZHACEmCd+zdI5WwbOUh8PEmKLR8/v9aTo7N2F0=
X-Google-Smtp-Source: ABdhPJwb9K4AcMIvyWfdEEOZxMZ2o3ORdB0SvlWAU0ZWotI6p5gqt4haO/8P0Xpo14MD5b9ksW1UdQQI0KnPPm2z7XI=
X-Received: by 2002:a1c:ac86:: with SMTP id v128mr3758373wme.175.1614173391373; 
 Wed, 24 Feb 2021 05:29:51 -0800 (PST)
MIME-Version: 1.0
References: <20201208185012.265508-1-jmaloy@redhat.com>
 <20201208185012.265508-14-jmaloy@redhat.com>
In-Reply-To: <20201208185012.265508-14-jmaloy@redhat.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Wed, 24 Feb 2021 21:29:40 +0800
Message-ID: <CADvbK_fy8E+OE+fEfXfXB=57q_oH0HtW2s9S+pxP2p1rtD2fAQ@mail.gmail.com>
To: Jon Maloy <jmaloy@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.52 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lEuEn-0002wL-Vh
Subject: Re: [tipc-discussion] [net-next 13/16] tipc: simplify signature of
 tipc_find_service()
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
> We reduce the signature of tipc_find_service() and
> tipc_create_service(). The reason for doing this might not
> be obvious, but we plan to let struct tipc_uaddr contain
> information that is relevant for these functions in a later
> commit.
>
> Signed-off-by: Jon Maloy <jmaloy@redhat.com>
> ---
>  net/tipc/name_table.c | 58 ++++++++++++++++++++++++++-----------------
>  net/tipc/name_table.h |  2 +-
>  net/tipc/socket.c     |  2 +-
>  3 files changed, 37 insertions(+), 25 deletions(-)
>
> diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
> index 57abed74d0d9..554a006d7c0d 100644
> --- a/net/tipc/name_table.c
> +++ b/net/tipc/name_table.c
> @@ -255,20 +255,25 @@ static struct publication *tipc_publ_create(struct tipc_uaddr *ua,
>   *
>   * Allocates a single range structure and sets it to all 0's.
>   */
> -static struct tipc_service *tipc_service_create(u32 type, struct hlist_head *hd)
> +static struct tipc_service *tipc_service_create(struct net *net,
> +                                               struct tipc_uaddr *ua)
is that too much to pass 'ua' pointer if only 'type' is being used here?

>  {
> -       struct tipc_service *service = kzalloc(sizeof(*service), GFP_ATOMIC);
> +       struct name_table *nt = tipc_name_table(net);
> +       struct tipc_service *service;
> +       struct hlist_head *hd;
>
> +       service = kzalloc(sizeof(*service), GFP_ATOMIC);
>         if (!service) {
>                 pr_warn("Service creation failed, no memory\n");
>                 return NULL;
>         }
>
>         spin_lock_init(&service->lock);
> -       service->type = type;
> +       service->type = ua->sr.type;
>         service->ranges = RB_ROOT;
>         INIT_HLIST_NODE(&service->service_list);
>         INIT_LIST_HEAD(&service->subscriptions);
> +       hd = &nt->services[hash(ua->sr.type)];
>         hlist_add_head_rcu(&service->service_list, hd);
>         return service;
>  }
> @@ -453,15 +458,16 @@ static void tipc_service_subscribe(struct tipc_service *service,
>         }
>  }
>
> -static struct tipc_service *tipc_service_find(struct net *net, u32 type)
> +static struct tipc_service *tipc_service_find(struct net *net,
> +                                             struct tipc_uaddr *ua)
>  {
>         struct name_table *nt = tipc_name_table(net);
>         struct hlist_head *service_head;
>         struct tipc_service *service;
>
> -       service_head = &nt->services[hash(type)];
> +       service_head = &nt->services[hash(ua->sr.type)];
>         hlist_for_each_entry_rcu(service, service_head, service_list) {
> -               if (service->type == type)
> +               if (service->type == ua->sr.type)
>                         return service;
>         }
>         return NULL;
> @@ -472,7 +478,6 @@ struct publication *tipc_nametbl_insert_publ(struct net *net,
>                                              struct tipc_socket_addr *sk,
>                                              u32 key)
>  {
> -       struct name_table *nt = tipc_name_table(net);
>         struct tipc_service *sc;
>         struct publication *p;
>         u32 type = ua->sr.type;
> @@ -487,9 +492,9 @@ struct publication *tipc_nametbl_insert_publ(struct net *net,
>                          type, ua->sr.lower, ua->sr.upper, sk->node);
>                 return NULL;
>         }
> -       sc = tipc_service_find(net, type);
> +       sc = tipc_service_find(net, ua);
>         if (!sc)
> -               sc = tipc_service_create(type, &nt->services[hash(type)]);
> +               sc = tipc_service_create(net, ua);
>         if (sc) {
>                 spin_lock_bh(&sc->lock);
>                 res = tipc_service_insert_publ(net, sc, p);
> @@ -512,7 +517,7 @@ struct publication *tipc_nametbl_remove_publ(struct net *net,
>         struct tipc_service *sc;
>         bool last;
>
> -       sc = tipc_service_find(net, ua->sr.type);
> +       sc = tipc_service_find(net, ua);
>         if (!sc)
>                 return NULL;
>
> @@ -585,7 +590,7 @@ bool tipc_nametbl_lookup_anycast(struct net *net,
>                 return true;
>
>         rcu_read_lock();
> -       sc = tipc_service_find(net, ua->sr.type);
> +       sc = tipc_service_find(net, ua);
>         if (unlikely(!sc))
>                 goto exit;
>
> @@ -638,7 +643,7 @@ bool tipc_nametbl_lookup_group(struct net *net, struct tipc_uaddr *ua,
>
>         *dstcnt = 0;
>         rcu_read_lock();
> -       sc = tipc_service_find(net, ua->sa.type);
> +       sc = tipc_service_find(net, ua);
>         if (unlikely(!sc))
>                 goto exit;
>
> @@ -682,7 +687,7 @@ void tipc_nametbl_lookup_mcast_sockets(struct net *net, struct tipc_uaddr *ua,
>         u32 scope = ua->scope;
>
>         rcu_read_lock();
> -       sc = tipc_service_find(net, ua->sr.type);
> +       sc = tipc_service_find(net, ua);
>         if (!sc)
>                 goto exit;
>
> @@ -711,7 +716,7 @@ void tipc_nametbl_lookup_mcast_nodes(struct net *net, struct tipc_uaddr *ua,
>         struct publication *p;
>
>         rcu_read_lock();
> -       sc = tipc_service_find(net, ua->sr.type);
> +       sc = tipc_service_find(net, ua);
>         if (!sc)
>                 goto exit;
>
> @@ -729,7 +734,7 @@ void tipc_nametbl_lookup_mcast_nodes(struct net *net, struct tipc_uaddr *ua,
>  /* tipc_nametbl_build_group - build list of communication group members
>   */
>  void tipc_nametbl_build_group(struct net *net, struct tipc_group *grp,
> -                             u32 type, u32 scope)
> +                             struct tipc_uaddr *ua)
>  {
>         struct service_range *sr;
>         struct tipc_service *sc;
> @@ -737,7 +742,7 @@ void tipc_nametbl_build_group(struct net *net, struct tipc_group *grp,
>         struct rb_node *n;
>
>         rcu_read_lock();
> -       sc = tipc_service_find(net, type);
> +       sc = tipc_service_find(net, ua);
>         if (!sc)
>                 goto exit;
>
> @@ -745,9 +750,10 @@ void tipc_nametbl_build_group(struct net *net, struct tipc_group *grp,
>         for (n = rb_first(&sc->ranges); n; n = rb_next(n)) {
>                 sr = container_of(n, struct service_range, tree_node);
>                 list_for_each_entry(p, &sr->all_publ, all_publ) {
> -                       if (p->scope != scope)
> +                       if (p->scope != ua->scope)
>                                 continue;
> -                       tipc_group_add_member(grp, p->sk.node, p->sk.ref, p->sr.lower);
> +                       tipc_group_add_member(grp, p->sk.node, p->sk.ref,
> +                                             p->sr.lower);
>                 }
>         }
>         spin_unlock_bh(&sc->lock);
> @@ -829,17 +835,18 @@ void tipc_nametbl_withdraw(struct net *net, struct tipc_uaddr *ua,
>   */
>  bool tipc_nametbl_subscribe(struct tipc_subscription *sub)
>  {
> -       struct name_table *nt = tipc_name_table(sub->net);
>         struct tipc_net *tn = tipc_net(sub->net);
>         struct tipc_subscr *s = &sub->evt.s;
>         u32 type = tipc_sub_read(s, seq.type);
>         struct tipc_service *sc;
> +       struct tipc_uaddr ua;
>         bool res = true;
>
> +       tipc_uaddr(&ua, TIPC_SERVICE_RANGE, TIPC_NODE_SCOPE, type, 0, 0);
>         spin_lock_bh(&tn->nametbl_lock);
> -       sc = tipc_service_find(sub->net, type);
> +       sc = tipc_service_find(sub->net, &ua);
>         if (!sc)
> -               sc = tipc_service_create(type, &nt->services[hash(type)]);
> +               sc = tipc_service_create(sub->net, &ua);
>         if (sc) {
>                 spin_lock_bh(&sc->lock);
>                 tipc_service_subscribe(sc, sub);
> @@ -864,9 +871,11 @@ void tipc_nametbl_unsubscribe(struct tipc_subscription *sub)
>         struct tipc_subscr *s = &sub->evt.s;
>         u32 type = tipc_sub_read(s, seq.type);
>         struct tipc_service *sc;
> +       struct tipc_uaddr ua;
>
> +       tipc_uaddr(&ua, TIPC_SERVICE_RANGE, TIPC_NODE_SCOPE, type, 0, 0);
>         spin_lock_bh(&tn->nametbl_lock);
> -       sc = tipc_service_find(sub->net, type);
> +       sc = tipc_service_find(sub->net, &ua);
>         if (!sc)
>                 goto exit;
>
> @@ -1058,6 +1067,7 @@ static int tipc_nl_service_list(struct net *net, struct tipc_nl_msg *msg,
>         struct tipc_net *tn = tipc_net(net);
>         struct tipc_service *service = NULL;
>         struct hlist_head *head;
> +       struct tipc_uaddr ua;
>         int err;
>         int i;
>
> @@ -1071,7 +1081,9 @@ static int tipc_nl_service_list(struct net *net, struct tipc_nl_msg *msg,
>
>                 if (*last_type ||
>                     (!i && *last_key && (*last_lower == *last_key))) {
> -                       service = tipc_service_find(net, *last_type);
> +                       tipc_uaddr(&ua, TIPC_SERVICE_RANGE, TIPC_NODE_SCOPE,
> +                                  *last_type, *last_lower, *last_lower);
> +                       service = tipc_service_find(net, &ua);
>                         if (!service)
>                                 return -EPIPE;
>                 } else {
> diff --git a/net/tipc/name_table.h b/net/tipc/name_table.h
> index 909eaf706553..5b8102e70f3b 100644
> --- a/net/tipc/name_table.h
> +++ b/net/tipc/name_table.h
> @@ -121,7 +121,7 @@ bool tipc_nametbl_lookup_group(struct net *net, struct tipc_uaddr *ua,
>                                struct list_head *dsts, int *dstcnt,
>                                u32 exclude, bool mcast);
>  void tipc_nametbl_build_group(struct net *net, struct tipc_group *grp,
> -                             u32 type, u32 domain);
> +                             struct tipc_uaddr *ua);
>  struct publication *tipc_nametbl_publish(struct net *net, struct tipc_uaddr *ua,
>                                          struct tipc_socket_addr *sk, u32 key);
>  void tipc_nametbl_withdraw(struct net *net, struct tipc_uaddr *ua,
> diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> index a349160a5ae4..8f1083d3859d 100644
> --- a/net/tipc/socket.c
> +++ b/net/tipc/socket.c
> @@ -3073,9 +3073,9 @@ static int tipc_sk_join(struct tipc_sock *tsk, struct tipc_group_req *mreq)
>         msg_set_lookup_scope(hdr, mreq->scope);
>         msg_set_nametype(hdr, mreq->type);
>         msg_set_dest_droppable(hdr, true);
> -       tipc_nametbl_build_group(net, grp, mreq->type, mreq->scope);
>         tipc_uaddr(&ua, TIPC_SERVICE_RANGE, mreq->scope,
>                    mreq->type, mreq->instance, mreq->instance);
> +       tipc_nametbl_build_group(net, grp, &ua);
>         rc = tipc_sk_publish(tsk, &ua);
>         if (rc) {
>                 tipc_group_delete(net, grp);
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
