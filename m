Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 247E053ED55
	for <lists+tipc-discussion@lfdr.de>; Mon,  6 Jun 2022 19:56:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1nyGxw-0002QA-Lh; Mon, 06 Jun 2022 17:56:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lucien.xin@gmail.com>) id 1nyGxu-0002Ph-S1
 for tipc-discussion@lists.sourceforge.net; Mon, 06 Jun 2022 17:56:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WwRHwacwCb++4vTmazUADAub/o1P0BKrJOcW4feXuuk=; b=jnj2AWfV1smTeRJXy2QHJf6Ild
 YCdk7nvwx20a13st/akf39Dx9ykjIZN6nvM3t0DXTEinj4WIV5Q67UEN+Vc4AeBVr93HaaLIuvXTp
 1M4iDo08ox6/0eM5HewwIDykPQ7Ek7Ma94zcuHPPIs/z+t5nXtqUYqQvpZ/VKBTHK/Ms=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WwRHwacwCb++4vTmazUADAub/o1P0BKrJOcW4feXuuk=; b=QACW7mSJt3ji86GgEHt8JO2gkB
 UfWK342qewv6zt2I/AMRP6NrHnRxT/ilI9JIIY4gsg2wQSxQ39UMcGNXrw0eKvodfFEtE/YJ2eLof
 jurZXbXcHSdT4PA9nOgLTJCuDykW7vWec3f/wCS538fiF+EVamDHxNFaLlzMuDwt6fJE=;
Received: from mail-oi1-f175.google.com ([209.85.167.175])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nyGxt-000383-4V
 for tipc-discussion@lists.sourceforge.net; Mon, 06 Jun 2022 17:56:35 +0000
Received: by mail-oi1-f175.google.com with SMTP id y69so6862071oia.7
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 06 Jun 2022 10:56:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WwRHwacwCb++4vTmazUADAub/o1P0BKrJOcW4feXuuk=;
 b=ZOgUXXgf9jtDs1LF46e7Od8UNbQKAXwCUENRL87i2JpDj59jFrPY+CIiVS78jAlejh
 O0inAaTHFOMi6SCL0pW0kZ+4IsGtxQeEg2depZZWyKWm1Tawf3NNjRyhwenXt7zE6B4i
 27gbd1wZtfx753FycqbdW+3MLpK2J+Gw8PuF1fHDy/ONU+CAxm7MyNGoPJq4hUO1jtY1
 ERwjdbwKt0mrF3uvcRNwsC4d1Njhr/wqJuCh3yt3REban5698R4sYP/EOFc9Ra2s0NWR
 vxjB+nIXLaG8ZwM5Icgxtbt+WLTxMkMHO8uZp7Q3YBMGFs95L5kGIIqqQHnZEXa9NLSe
 4OWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WwRHwacwCb++4vTmazUADAub/o1P0BKrJOcW4feXuuk=;
 b=0fReKjaLkj2EJTcBfr4tqGbg2t7535bkbXS4E+VDnGqDnuQxgZRGpvEhbSgHtvp6ru
 fLy1/qZws5C2ayyKMAovDKff+FyJY8g9ej8XQQFwWJ0KoRAU6prU9U6shlQW3YGWEgGV
 rKH7g3ROCGAHkJi2p9ipMBpEx3yAQtCe0cRDn+Ywu11EC6zAewD1iY2mlL0vCBzMGUhG
 M+OVHpZGiaoSkHpMJeyIYc/l9CaIWR0Pta/VF6fd/HDK3dhUuPvUOQ0eoK2o181mdzgi
 dXX3bbWhMbq4xwdBv0t13pfGORBDKaOmYF2ceL/xd43qG2aQkLgl7WV+sB2dso3Klbo6
 N+2A==
X-Gm-Message-State: AOAM532xQJR0HOSBL4zJyNVV+SIoYcArGONovYba4caTYunpgwFlDwNm
 IQJP2ElsQ1Aue1tJ2DsupPtFjGOGv8Jm6bejWnTeJo1VREeH4w==
X-Google-Smtp-Source: ABdhPJz9Jxj3mP29xuXDFiWXCrSfSPo5s96TS0a0oUo/pgkVJqn43J7OJ4MVhFcNu0b5pEBUpNmMkiHHRYAgkApsb8g=
X-Received: by 2002:aca:b786:0:b0:32b:8df1:919b with SMTP id
 h128-20020acab786000000b0032b8df1919bmr22189245oif.190.1654538188595; Mon, 06
 Jun 2022 10:56:28 -0700 (PDT)
MIME-Version: 1.0
References: <26087ae4e2a26e0995b8ae98dbe302960ed97bdd.1654529065.git.lucien.xin@gmail.com>
In-Reply-To: <26087ae4e2a26e0995b8ae98dbe302960ed97bdd.1654529065.git.lucien.xin@gmail.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Mon, 6 Jun 2022 13:56:13 -0400
Message-ID: <CADvbK_cHzg4atRcnnibvxvbvGE3=YGUSuv+RSF5pYz=cPah9GA@mail.gmail.com>
To: tipc-discussion@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  fix Jon's email address. On Mon, Jun 6, 2022 at 11:24 AM Xin
 Long wrote: > > Shuang Li reported a NULL pointer dereference crash: > >
 [] BUG: kernel NULL pointer dereference, address: 0000000000000068 > [] RIP:
 0010:tipc_li [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.175 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.175 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nyGxt-000383-4V
Subject: Re: [tipc-discussion] [PATCH net] tipc: move bc link creation back
 to tipc_node_create
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

fix Jon's email address.

On Mon, Jun 6, 2022 at 11:24 AM Xin Long <lucien.xin@gmail.com> wrote:
>
> Shuang Li reported a NULL pointer dereference crash:
>
>   [] BUG: kernel NULL pointer dereference, address: 0000000000000068
>   [] RIP: 0010:tipc_link_is_up+0x5/0x10 [tipc]
>   [] Call Trace:
>   []  <IRQ>
>   []  tipc_bcast_rcv+0xa2/0x190 [tipc]
>   []  tipc_node_bc_rcv+0x8b/0x200 [tipc]
>   []  tipc_rcv+0x3af/0x5b0 [tipc]
>   []  tipc_udp_recv+0xc7/0x1e0 [tipc]
>
> It was caused by the 'l' passed into tipc_bcast_rcv() is NULL. When it
> creates a node in tipc_node_check_dest(), after inserting the new node
> into hashtable in tipc_node_create(), it creates the bc link. However,
> there is a gap between this insert and bc link creation, a bc packet
> may come in and get the node from the hashtable then try to dereference
> its bc link, which is NULL.
>
> This patch is to fix it by moving the bc link creation before inserting
> into the hashtable.
>
> Note that for a preliminary node becoming "real", the bc link creation
> should also be called before it's rehashed, as we don't create it for
> preliminary nodes.
>
> Fixes: 4cbf8ac2fe5a ("tipc: enable creating a "preliminary" node")
> Reported-by: Shuang Li <shuali@redhat.com>
> Signed-off-by: Xin Long <lucien.xin@gmail.com>
> ---
>  net/tipc/node.c | 41 ++++++++++++++++++++++-------------------
>  1 file changed, 22 insertions(+), 19 deletions(-)
>
> diff --git a/net/tipc/node.c b/net/tipc/node.c
> index 6ef95ce565bd..b48d97cbbe29 100644
> --- a/net/tipc/node.c
> +++ b/net/tipc/node.c
> @@ -472,8 +472,8 @@ struct tipc_node *tipc_node_create(struct net *net, u32 addr, u8 *peer_id,
>                                    bool preliminary)
>  {
>         struct tipc_net *tn = net_generic(net, tipc_net_id);
> +       struct tipc_link *l, *snd_l = tipc_bc_sndlink(net);
>         struct tipc_node *n, *temp_node;
> -       struct tipc_link *l;
>         unsigned long intv;
>         int bearer_id;
>         int i;
> @@ -488,6 +488,16 @@ struct tipc_node *tipc_node_create(struct net *net, u32 addr, u8 *peer_id,
>                         goto exit;
>                 /* A preliminary node becomes "real" now, refresh its data */
>                 tipc_node_write_lock(n);
> +               if (!tipc_link_bc_create(net, tipc_own_addr(net), addr, peer_id, U16_MAX,
> +                                        tipc_link_min_win(snd_l), tipc_link_max_win(snd_l),
> +                                        n->capabilities, &n->bc_entry.inputq1,
> +                                        &n->bc_entry.namedq, snd_l, &n->bc_entry.link)) {
> +                       pr_warn("Broadcast rcv link refresh failed, no memory\n");
> +                       tipc_node_write_unlock_fast(n);
> +                       tipc_node_put(n);
> +                       n = NULL;
> +                       goto exit;
> +               }
>                 n->preliminary = false;
>                 n->addr = addr;
>                 hlist_del_rcu(&n->hash);
> @@ -567,7 +577,16 @@ struct tipc_node *tipc_node_create(struct net *net, u32 addr, u8 *peer_id,
>         n->signature = INVALID_NODE_SIG;
>         n->active_links[0] = INVALID_BEARER_ID;
>         n->active_links[1] = INVALID_BEARER_ID;
> -       n->bc_entry.link = NULL;
> +       if (!preliminary &&
> +           !tipc_link_bc_create(net, tipc_own_addr(net), addr, peer_id, U16_MAX,
> +                                tipc_link_min_win(snd_l), tipc_link_max_win(snd_l),
> +                                n->capabilities, &n->bc_entry.inputq1,
> +                                &n->bc_entry.namedq, snd_l, &n->bc_entry.link)) {
> +               pr_warn("Broadcast rcv link creation failed, no memory\n");
> +               kfree(n);
> +               n = NULL;
> +               goto exit;
> +       }
>         tipc_node_get(n);
>         timer_setup(&n->timer, tipc_node_timeout, 0);
>         /* Start a slow timer anyway, crypto needs it */
> @@ -1155,7 +1174,7 @@ void tipc_node_check_dest(struct net *net, u32 addr,
>                           bool *respond, bool *dupl_addr)
>  {
>         struct tipc_node *n;
> -       struct tipc_link *l, *snd_l;
> +       struct tipc_link *l;
>         struct tipc_link_entry *le;
>         bool addr_match = false;
>         bool sign_match = false;
> @@ -1175,22 +1194,6 @@ void tipc_node_check_dest(struct net *net, u32 addr,
>                 return;
>
>         tipc_node_write_lock(n);
> -       if (unlikely(!n->bc_entry.link)) {
> -               snd_l = tipc_bc_sndlink(net);
> -               if (!tipc_link_bc_create(net, tipc_own_addr(net),
> -                                        addr, peer_id, U16_MAX,
> -                                        tipc_link_min_win(snd_l),
> -                                        tipc_link_max_win(snd_l),
> -                                        n->capabilities,
> -                                        &n->bc_entry.inputq1,
> -                                        &n->bc_entry.namedq, snd_l,
> -                                        &n->bc_entry.link)) {
> -                       pr_warn("Broadcast rcv link creation failed, no mem\n");
> -                       tipc_node_write_unlock_fast(n);
> -                       tipc_node_put(n);
> -                       return;
> -               }
> -       }
>
>         le = &n->links[b->identity];
>
> --
> 2.31.1
>


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
