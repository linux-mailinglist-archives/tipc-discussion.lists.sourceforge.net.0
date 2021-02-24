Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 24AA1323C7F
	for <lists+tipc-discussion@lfdr.de>; Wed, 24 Feb 2021 13:59:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lEtkq-0002d3-AK; Wed, 24 Feb 2021 12:59:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1lEtkn-0002cu-FL
 for tipc-discussion@lists.sourceforge.net; Wed, 24 Feb 2021 12:58:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ul7QZuUARew2BgjJtXcE+1sPDkKHTp32wruY9vPjitc=; b=H/ctLzbt51h7Jky8C/6JQKoYLA
 I/KkFkh5K4QDVntHceQW/CJMYBYdgole+IOWZMN68TmfqXT7HxaJ2bwS5fADnsFMfTbtF3TRwPBpn
 dk5C01do9KDH6p77C0BgjtIbe99ab74EBW4nJv4t0VACH/rNnJ5FXfKz0ytPBOHuz0sM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ul7QZuUARew2BgjJtXcE+1sPDkKHTp32wruY9vPjitc=; b=KIfEND2PBYv7dZkM3xz+/c73dz
 c5Ep/QYog8NGtyrV5msroYaFW7cjll9t3EM7ykms/J+RRoJjDkH0+CRjH9lzSojzeWvhRtuWD4d7j
 TU72pnH6Cb+rocXAFu+FNYs5Vv6pg/a73mHGvXEhwWAPUfUbcDxUtuEnl58cC8W+sfjI=;
Received: from mail-wm1-f48.google.com ([209.85.128.48])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lEtkg-003gnt-HE
 for tipc-discussion@lists.sourceforge.net; Wed, 24 Feb 2021 12:58:57 +0000
Received: by mail-wm1-f48.google.com with SMTP id m1so1749894wml.2
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 24 Feb 2021 04:58:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ul7QZuUARew2BgjJtXcE+1sPDkKHTp32wruY9vPjitc=;
 b=mZcLYwi+LcyXXEgFNWveiT0+bMA9yfDDBtzUhn3ZYQpHMDjmLoUMAPRgfjog9qYzX6
 rxyKZlRPbx2JjneFnlvG65MRmru3dqQhylmuLX4/a5Ci2tQ0Oer1WW2wwh0V3adCs4by
 nOHAnA096nn3IHgOOXp6cBxajaGP+Uyr54zw6gZIllPD+NaDP09GNyhirsdonAOzqSA7
 Ks72qwKFvG141bHt9a41eZCpvtj4ThHpmkmdtojCuZxrXzrF50AaMhOG3PBIQHOTpqnp
 yXkpekCn6qZNdSB9ANPr1FMuQN208VKLyNfhXOrHmmxkrQDudkIAusV6eHvPeBYpg+dT
 V/kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ul7QZuUARew2BgjJtXcE+1sPDkKHTp32wruY9vPjitc=;
 b=O8/LVtyVX4inMqGw6kTTXJfBsLI4ZPqWhhGLluzbwmEGUqgLuoiTPwTk1aE0ZP65Gg
 EbYgl9KDt7Y7NkToOLRkFC2t/ltdRG+WgvlYav/d7/ukKkZuN5gyp8aNxvX/tmorpc9M
 gOo+zW4b3MAi4bkq4b8XnNL4iPJnwEG4N7TkN2jfLWqG+mXYMe6x2V0bpSyemHOkVOgS
 5UsSV99VLEE2Qx7DJFphtP0kd8BPHVmSTMQXyHyTd8ld5AWMHzFN6agieMwPYIkng6D2
 rg3qSZ5MBIUzhakYCbSNvwDEBYhRSD2xR1ezKJX3Nz9doR9meYybUAAc3K33LWWhlCfI
 bSQw==
X-Gm-Message-State: AOAM531zk/phqAfF6lKNAWdgDyBOJkuRgboThoh8PId+0lW9oU0np/rX
 TIq3cXuCKCN2VjUQsddpXWDXfY1T3tY8M5v3VME=
X-Google-Smtp-Source: ABdhPJxRUb5Qi7gQuKJj8vxYfvfPgdurn7IRpm9D3U+TW4lGyKOdQwQyEhDP8TLCN2iNzPpc+uFgfw/CXQRQ2hGgXlA=
X-Received: by 2002:a1c:a98a:: with SMTP id s132mr222514wme.12.1614171523996; 
 Wed, 24 Feb 2021 04:58:43 -0800 (PST)
MIME-Version: 1.0
References: <20201208185012.265508-1-jmaloy@redhat.com>
 <20201208185012.265508-3-jmaloy@redhat.com>
In-Reply-To: <20201208185012.265508-3-jmaloy@redhat.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Wed, 24 Feb 2021 20:58:32 +0800
Message-ID: <CADvbK_csKRaHB8LYKu_mOwUPwE_b06RYEPz94+f+KnrUm7nt6w@mail.gmail.com>
To: Jon Maloy <jmaloy@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.48 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.48 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lEtkg-003gnt-HE
Subject: Re: [tipc-discussion] [net-next 02/16] tipc: move creation of
 publication item one level up in call chain
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
Cc: tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On Wed, Dec 9, 2020 at 2:51 AM <jmaloy@redhat.com> wrote:
>
> From: Jon Maloy <jmaloy@redhat.com>
>
> We instantiante struct publication in tipc_nametbl_insert_publ()
> instead of as currently in tipc_service_insert_publ(). This has the
> advantage that we can pass a pointer to the publication struct to
> the next call levels, instead of the numerous individual parameters
> we pass on now. It also gives us a location to keep the contents of
> the additional fields we will introduce in a later commit.
>
> Signed-off-by: Jon Maloy <jmaloy@redhat.com>
> ---
>  net/tipc/name_table.c | 63 ++++++++++++++++++++++---------------------
>  1 file changed, 32 insertions(+), 31 deletions(-)
>
> diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
> index c37a4a9c87ca..68e269b49780 100644
> --- a/net/tipc/name_table.c
> +++ b/net/tipc/name_table.c
> @@ -327,49 +327,44 @@ static struct service_range *tipc_service_create_range(struct tipc_service *sc,
>         return sr;
>  }
>
> -static struct publication *tipc_service_insert_publ(struct net *net,
> -                                                   struct tipc_service *sc,
> -                                                   u32 type, u32 lower,
> -                                                   u32 upper, u32 scope,
> -                                                   u32 node, u32 port,
> -                                                   u32 key)
> +static bool tipc_service_insert_publ(struct net *net,
> +                                    struct tipc_service *sc,
> +                                    struct publication *p)
>  {
>         struct tipc_subscription *sub, *tmp;
>         struct service_range *sr;
> -       struct publication *p;
> +       struct publication *_p;
> +       u32 node = p->sk.node;
>         bool first = false;
>
> -       sr = tipc_service_create_range(sc, lower, upper);
> +       sr = tipc_service_create_range(sc, p->sr.lower, p->sr.upper);
>         if (!sr)
>                 goto  err;
>
>         first = list_empty(&sr->all_publ);
>
>         /* Return if the publication already exists */
> -       list_for_each_entry(p, &sr->all_publ, all_publ) {
> -               if (p->key == key && (!p->sk.node || p->sk.node == node))
> -                       return NULL;
> +       list_for_each_entry(_p, &sr->all_publ, all_publ) {
> +               if (_p->key == p->key && (!_p->sk.node || _p->sk.node == node))
> +                       return false;
>         }
>
> -       /* Create and insert publication */
> -       p = tipc_publ_create(type, lower, upper, scope, node, port, key);
> -       if (!p)
> -               goto err;
> -       /* Suppose there shouldn't be a huge gap btw publs i.e. >INT_MAX */
> -       p->id = sc->publ_cnt++;
> -       if (in_own_node(net, node))
> +       if (in_own_node(net, p->sk.node))
>                 list_add(&p->local_publ, &sr->local_publ);
>         list_add(&p->all_publ, &sr->all_publ);
> +       p->id = sc->publ_cnt++;
>
>         /* Any subscriptions waiting for notification?  */
>         list_for_each_entry_safe(sub, tmp, &sc->subscriptions, service_list) {
> -               tipc_sub_report_overlap(sub, p->sr.lower, p->sr.upper, TIPC_PUBLISHED,
> -                                       p->sk.ref, p->sk.node, p->scope, first);
> +               tipc_sub_report_overlap(sub, p->sr.lower, p->sr.upper,
> +                                       TIPC_PUBLISHED, p->sk.ref, p->sk.node,
> +                                       p->scope, first);
>         }
> -       return p;
> +       return true;
>  err:
> -       pr_warn("Failed to bind to %u,%u,%u, no memory\n", type, lower, upper);
> -       return NULL;
> +       pr_warn("Failed to bind to %u,%u,%u, no memory\n",
> +               p->sr.type, p->sr.lower, p->sr.upper);
> +       return false;
>  }
>
>  /**
> @@ -481,6 +476,11 @@ struct publication *tipc_nametbl_insert_publ(struct net *net, u32 type,
>         struct name_table *nt = tipc_name_table(net);
>         struct tipc_service *sc;
>         struct publication *p;
> +       bool res = false;
> +
> +       p = tipc_publ_create(type, lower, upper, scope, node, port, key);
> +       if (!p)
> +               return NULL;
>
>         if (scope > TIPC_NODE_SCOPE || lower > upper) {
>                 pr_debug("Failed to bind illegal {%u,%u,%u} with scope %u\n",
> @@ -490,14 +490,15 @@ struct publication *tipc_nametbl_insert_publ(struct net *net, u32 type,
>         sc = tipc_service_find(net, type);
>         if (!sc)
>                 sc = tipc_service_create(type, &nt->services[hash(type)]);
> -       if (!sc)
> -               return NULL;
> -
> -       spin_lock_bh(&sc->lock);
> -       p = tipc_service_insert_publ(net, sc, type, lower, upper,
> -                                    scope, node, port, key);
> -       spin_unlock_bh(&sc->lock);
> -       return p;
> +       if (sc) {
> +               spin_lock_bh(&sc->lock);
> +               res = tipc_service_insert_publ(net, sc, p);
> +               spin_unlock_bh(&sc->lock);
If move spin_(un)lock_bh into tipc_service_insert_publ(), we can do:

        if (sc && tipc_service_insert_publ(net, sc, p))
                return p;

> +       }
> +       if (res)
> +               return p;
and remove 'bool res = false;' and this 'if'.

> +       kfree(p);
> +       return NULL;
>  }
>
>  struct publication *tipc_nametbl_remove_publ(struct net *net, u32 type,
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
