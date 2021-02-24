Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A2835323DB5
	for <lists+tipc-discussion@lfdr.de>; Wed, 24 Feb 2021 14:19:39 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lEu4l-0003V7-27; Wed, 24 Feb 2021 13:19:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1lEu4j-0003Uw-Ua
 for tipc-discussion@lists.sourceforge.net; Wed, 24 Feb 2021 13:19:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xlzW07/xP6egmJoIyzwszl3fMW6URwt+JUZ5Vh749Uo=; b=BHI0aNEaVxld6iicY/6Z5/x7qj
 Ap9WGXHeQIcMljIVbjfSJSUTJYiBRpuRL1gquOPGbiOjbTMkX/oPYR9NE6QuSIX3PhIHqsKRi9ih9
 tM7nFtQUP1fT5/uDKyU53iJMBewqu4o9gc1peF2ecOGthexN7kASfqlheMarovN76yrE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xlzW07/xP6egmJoIyzwszl3fMW6URwt+JUZ5Vh749Uo=; b=lW8kww2+Fi9BBUgR8fhLB/SIFe
 V6iht6DAnEAdJne/tzVA4lynvBvuUxsIZQ1fOte4hwJBbCNVP5LiVLP4poTboHDnI7JskUuUsL6KM
 lskWcNTvmFj/BwxU5hLV4tiLTtxx7NL04Cv+BKtQGx9Iaz9VGbBM91cXaOaj01Lne2VE=;
Received: from mail-wr1-f49.google.com ([209.85.221.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lEu4b-0002YR-Oc
 for tipc-discussion@lists.sourceforge.net; Wed, 24 Feb 2021 13:19:33 +0000
Received: by mail-wr1-f49.google.com with SMTP id e10so1645601wro.12
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 24 Feb 2021 05:19:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xlzW07/xP6egmJoIyzwszl3fMW6URwt+JUZ5Vh749Uo=;
 b=Nkc8u6M3jZsl0z/XiuGfPsY+H5FUOMP5aDmw1Qkkdbn+Om/XXGbyAhZgC4Gf+VofVu
 XfiVslz9d/ydsajNrlvM1JST70ZbNnuntGYJlFy5tMXV1dQ4zVLXIhp19rCHhnjoNEfh
 wn758ACCUtdWJDpP6J3dgqNvjwzw2t82zkhfS/z8Z6JSviC/NzilqtvULq7kryI70Suk
 KVwboUlkVWT+7VEHkpLp5fI51UMCv7FEtwE8pigkjzfdWdwWFjluSOvJNZyGqtZvNHhi
 zl2iCeK6Spx0ih4tyIjKRjzEDKTNSsUSMALTLdkUYulNh6Eg0+tbk5yxNfR8Yl/Qf1nI
 AG3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xlzW07/xP6egmJoIyzwszl3fMW6URwt+JUZ5Vh749Uo=;
 b=qlNaMJpFL7AKnfxOJO3OPNIsDy9cwhmQD4jkVyuQ6MLkai6ovjhu0px1v4kyLO0aqA
 htdKIBpelZYqfe0Hr5ozMwqEuceNwY/7747VHvG5dRScdVxyx++WGxj/sIxRIZvi7YIY
 DBZSEHVkLlwhuUWNj3Cqb38OcAqJFQb8T505z7ZJz11H0zAXbO6LhI4jp9rDz4NXYudI
 sLpJxTSmKi0W2ciTg/XmCP4GiqPfaWcuciAhueRszh9wlXaVxplKYLnTu9lppM/DKjtk
 aBZxMzt801AhY9eFcS7ucrQdID84I40hwLN3PbRFtYPYHi1xsYU7Jhq1c0XqIyPpwV/a
 hSVw==
X-Gm-Message-State: AOAM532imIUs65MQwqTNtdsp/mqmYsgy1fSmOy2IHtNaMHQV21lBDADx
 zRTmmXzCVwYaenMXZ8ahasQGfzC3csu1x++elcVg+G2dMSA=
X-Google-Smtp-Source: ABdhPJwVPWIdCXhRzQBfbcstnh3+0MmrymYQwunsBW9TLRk9Ni9EYWUMI6tRApvvj2nMzX/dGZV650M4FM0zQIGlb1c=
X-Received: by 2002:adf:edc8:: with SMTP id v8mr31707517wro.330.1614172013770; 
 Wed, 24 Feb 2021 05:06:53 -0800 (PST)
MIME-Version: 1.0
References: <20201208185012.265508-1-jmaloy@redhat.com>
 <20201208185012.265508-6-jmaloy@redhat.com>
In-Reply-To: <20201208185012.265508-6-jmaloy@redhat.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Wed, 24 Feb 2021 21:06:41 +0800
Message-ID: <CADvbK_dfcN4TTJgcPCy_zLo6eXN-fpi+LaOXuOL65ApUC4ZJDQ@mail.gmail.com>
To: Jon Maloy <jmaloy@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.49 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.49 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lEu4b-0002YR-Oc
Subject: Re: [tipc-discussion] [net-next 05/16] tipc: simplify call
 signatures for publication creation
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
> We simplify the call signatures for tipc_nametbl_insert_publ() and
> tipc_publ_create() so that fewer parameters are passed around.
>
> Signed-off-by: Jon Maloy <jmaloy@redhat.com>
> ---
>  net/tipc/name_distr.c | 23 ++++++++--------
>  net/tipc/name_table.c | 61 +++++++++++++++++++------------------------
>  net/tipc/name_table.h | 10 ++++---
>  net/tipc/socket.c     |  8 ++----
>  4 files changed, 47 insertions(+), 55 deletions(-)
>
> diff --git a/net/tipc/name_distr.c b/net/tipc/name_distr.c
> index 721d2fca3d6f..df42fc2b4536 100644
> --- a/net/tipc/name_distr.c
> +++ b/net/tipc/name_distr.c
> @@ -293,30 +293,31 @@ static bool tipc_update_nametbl(struct net *net, struct distr_item *i,
>                                 u32 node, u32 dtype)
>  {
>         struct publication *p = NULL;
> -       u32 lower = ntohl(i->lower);
> -       u32 upper = ntohl(i->upper);
> -       u32 type = ntohl(i->type);
> -       u32 port = ntohl(i->port);
> +       struct tipc_socket_addr sk;
> +       struct tipc_uaddr ua;
>         u32 key = ntohl(i->key);
>
> +       tipc_uaddr(&ua, TIPC_SERVICE_RANGE, TIPC_CLUSTER_SCOPE,
> +                  ntohl(i->type), ntohl(i->lower), ntohl(i->upper));
> +       sk.ref = ntohl(i->port);
> +       sk.node = node;
> +
>         if (dtype == PUBLICATION) {
> -               p = tipc_nametbl_insert_publ(net, type, lower, upper,
> -                                            TIPC_CLUSTER_SCOPE, node,
> -                                            port, key);
> +               p = tipc_nametbl_insert_publ(net, &ua, &sk, key);
>                 if (p) {
>                         tipc_node_subscribe(net, &p->binding_node, node);
>                         return true;
>                 }
>         } else if (dtype == WITHDRAWAL) {
> -               p = tipc_nametbl_remove_publ(net, type, lower,
> -                                            upper, node, key);
> +               p = tipc_nametbl_remove_publ(net, ua.sr.type, ua.sr.lower,
> +                                            ua.sr.upper, node, key);
>                 if (p) {
>                         tipc_node_unsubscribe(net, &p->binding_node, node);
>                         kfree_rcu(p, rcu);
>                         return true;
>                 }
> -               pr_warn_ratelimited("Failed to remove binding %u,%u from %x\n",
> -                                   type, lower, node);
> +               pr_warn_ratelimited("Failed to remove binding %u,%u from %u\n",
> +                                   ua.sr.type, ua.sr.lower, node);
>         } else {
>                 pr_warn("Unrecognized name table message received\n");
>         }
> diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
> index d951e9345122..ba96d5fc57f3 100644
> --- a/net/tipc/name_table.c
> +++ b/net/tipc/name_table.c
> @@ -222,36 +222,30 @@ static int hash(int x)
>
>  /**
>   * tipc_publ_create - create a publication structure
> - * @type: name sequence type
> - * @lower: name sequence lower bound
> - * @upper: name sequence upper bound
> - * @scope: publication scope
> - * @node: network address of publishing socket
> - * @port: publishing port
> + * @ua: the service range the user is binding to
> + * @sk: the address of the socket thatis bound
>   * @key: publication key
>   */
> -static struct publication *tipc_publ_create(u32 type, u32 lower, u32 upper,
> -                                           u32 scope, u32 node, u32 port,
> +static struct publication *tipc_publ_create(struct tipc_uaddr *ua,
> +                                           struct tipc_socket_addr *sk,
>                                             u32 key)
>  {
> -       struct publication *publ = kzalloc(sizeof(*publ), GFP_ATOMIC);
> +       struct publication *p = kzalloc(sizeof(*p), GFP_ATOMIC);
>
> -       if (!publ)
> +       if (!p)
>                 return NULL;
>
> -       publ->sr.type = type;
> -       publ->sr.lower = lower;
> -       publ->sr.upper = upper;
> -       publ->scope = scope;
> -       publ->sk.node = node;
> -       publ->sk.ref = port;
> -       publ->key = key;
> -       INIT_LIST_HEAD(&publ->binding_sock);
> -       INIT_LIST_HEAD(&publ->binding_node);
> -       INIT_LIST_HEAD(&publ->local_publ);
> -       INIT_LIST_HEAD(&publ->all_publ);
> -       INIT_LIST_HEAD(&publ->list);
> -       return publ;
> +       p->sr = ua->sr;
> +       p->sk = *sk;
> +       p->addrtype = ua->addrtype;
> +       p->scope = ua->scope;
> +       p->key = key;
> +       INIT_LIST_HEAD(&p->binding_sock);
> +       INIT_LIST_HEAD(&p->binding_node);
> +       INIT_LIST_HEAD(&p->local_publ);
> +       INIT_LIST_HEAD(&p->all_publ);
> +       INIT_LIST_HEAD(&p->list);
> +       return p;
>  }
>
>  /**
> @@ -468,23 +462,24 @@ static struct tipc_service *tipc_service_find(struct net *net, u32 type)
>         return NULL;
>  };
>
> -struct publication *tipc_nametbl_insert_publ(struct net *net, u32 type,
> -                                            u32 lower, u32 upper,
> -                                            u32 scope, u32 node,
> -                                            u32 port, u32 key)
> +struct publication *tipc_nametbl_insert_publ(struct net *net,
> +                                            struct tipc_uaddr *ua,
> +                                            struct tipc_socket_addr *sk,
> +                                            u32 key)
>  {
>         struct name_table *nt = tipc_name_table(net);
>         struct tipc_service *sc;
>         struct publication *p;
> +       u32 type = ua->sr.type;
>         bool res = false;
>
> -       p = tipc_publ_create(type, lower, upper, scope, node, port, key);
> +       p = tipc_publ_create(ua, sk, key);
>         if (!p)
>                 return NULL;
>
> -       if (scope > TIPC_NODE_SCOPE || lower > upper) {
> -               pr_debug("Failed to bind illegal {%u,%u,%u} with scope %u\n",
> -                        type, lower, upper, scope);
> +       if (ua->sr.lower > ua->sr.upper) {
> +               pr_debug("Failed to bind illegal {%u,%u,%u} from node %u\n",
> +                        type, ua->sr.lower, ua->sr.upper, sk->node);
>                 return NULL;
>         }
>         sc = tipc_service_find(net, type);
> @@ -758,9 +753,7 @@ struct publication *tipc_nametbl_publish(struct net *net, struct tipc_uaddr *ua,
>                 goto exit;
>         }
>
> -       p = tipc_nametbl_insert_publ(net, ua->sr.type, ua->sr.lower,
> -                                    ua->sr.upper, ua->scope,
> -                                    sk->node, sk->ref, key);
> +       p = tipc_nametbl_insert_publ(net, ua, sk, key);
>         if (p) {
>                 nt->local_publ_count++;
>                 skb = tipc_named_publish(net, p);
> diff --git a/net/tipc/name_table.h b/net/tipc/name_table.h
> index 5e969e060509..e12b9eb2c7f1 100644
> --- a/net/tipc/name_table.h
> +++ b/net/tipc/name_table.h
> @@ -75,7 +75,8 @@ struct tipc_uaddr;
>  struct publication {
>         struct tipc_service_range sr;
>         struct tipc_socket_addr sk;
> -       u32 scope;
> +       u16 addrtype;
> +       u16 scope;
It would be nice to add some description for this change in the changelog.

>         u32 key;
>         u32 id;
>         struct list_head binding_node;
> @@ -125,9 +126,10 @@ struct publication *tipc_nametbl_publish(struct net *net, struct tipc_uaddr *ua,
>                                          struct tipc_socket_addr *sk, u32 key);
>  int tipc_nametbl_withdraw(struct net *net, u32 type, u32 lower, u32 upper,
>                           u32 key);
> -struct publication *tipc_nametbl_insert_publ(struct net *net, u32 type,
> -                                            u32 lower, u32 upper, u32 scope,
> -                                            u32 node, u32 ref, u32 key);
> +struct publication *tipc_nametbl_insert_publ(struct net *net,
> +                                            struct tipc_uaddr *ua,
> +                                            struct tipc_socket_addr *sk,
> +                                            u32 key);
>  struct publication *tipc_nametbl_remove_publ(struct net *net, u32 type,
>                                              u32 lower, u32 upper,
>                                              u32 node, u32 key);
> diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> index 598c8611b75f..0a92ebdd096d 100644
> --- a/net/tipc/socket.c
> +++ b/net/tipc/socket.c
> @@ -3088,12 +3088,8 @@ static int tipc_sk_join(struct tipc_sock *tsk, struct tipc_group_req *mreq)
>         msg_set_nametype(hdr, mreq->type);
>         msg_set_dest_droppable(hdr, true);
>         tipc_nametbl_build_group(net, grp, mreq->type, mreq->scope);
> -
> -       ua.sr.type = mreq->type;
> -       ua.sr.lower = mreq->instance;
> -       ua.sr.upper = ua.sr.lower;
> -       ua.scope = mreq->scope;
> -       ua.addrtype = TIPC_SERVICE_RANGE;
> +       tipc_uaddr(&ua, TIPC_SERVICE_RANGE, mreq->scope,
> +                  mreq->type, mreq->instance, mreq->instance);
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
