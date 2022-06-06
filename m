Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A695A53ED64
	for <lists+tipc-discussion@lfdr.de>; Mon,  6 Jun 2022 19:57:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1nyGyP-0003xw-Px; Mon, 06 Jun 2022 17:57:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lucien.xin@gmail.com>) id 1nyGyM-0003xq-Ig
 for tipc-discussion@lists.sourceforge.net; Mon, 06 Jun 2022 17:57:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0s7i+rNy1ox/9gyvsr4e6Yuc6l0yeMOOxtOiz/d/bts=; b=Vv00EXDrW7cPE3aiZOdujtwmtW
 1PRgF8NQMNAztMPj4Fikqvon7+LgW4F4XcLzVVO6+4uHnA+dN21aQkB9Sv9p3ZepDFbtw/FnRY9Xu
 3fq9sxxxF4oAcl40qlUnqEaKyBvfeb4G4NDKPSIGMbwjUBU8CkLntJC19fYujHZnEfgc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0s7i+rNy1ox/9gyvsr4e6Yuc6l0yeMOOxtOiz/d/bts=; b=IcNNVVNrDWnrvaIeF9E4rixvyS
 mfgs9s2boVRkrfVJENP3H2WOjBqbXMluTDChvRj8Z+mFreO5B+sT1OSKFVVsL5a0SKaKArTPeF5B+
 INqIx1DqrruKlZOLo/K/Pp4cuaYuJ4dllAucCELtLI9VOGCgWT4S/hbdFVsD/lG9WMU0=;
Received: from mail-oo1-f48.google.com ([209.85.161.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nyGyJ-00039T-V5
 for tipc-discussion@lists.sourceforge.net; Mon, 06 Jun 2022 17:57:03 +0000
Received: by mail-oo1-f48.google.com with SMTP id
 u8-20020a4ae688000000b0041b8dab7f71so208588oot.7
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 06 Jun 2022 10:57:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0s7i+rNy1ox/9gyvsr4e6Yuc6l0yeMOOxtOiz/d/bts=;
 b=Jir6C4sqMaH9uphPPYR4hNAFMnAm2D/MnkezPmOJJHSYi/VMIdAky4B1eXXNihVeds
 PMR17aGIlgQcmF8dURhGZp3GVTmm+i6RfchKaRyX3NXS2d5QdkMIPq2ngdEiMDrzTjqZ
 GehYB+dTsvwxePKFS14o1nyxsDqRLs/tC4nSbAbud8ICaV15wSYRlG3h7Oah3g1INApB
 4+DqKPaDcvRN2jmMxitF5x1FOdc4F4ZSQ9AIFK7fK2wE1hS65jTr5t17X4kBQEU85MP7
 vqY+FHPaNwWZ3MjSsmMfWaskcZd6qaVPIJSj6ltg2ZrTgGElX1z4QFJEwENVcs7Otw5j
 WuHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0s7i+rNy1ox/9gyvsr4e6Yuc6l0yeMOOxtOiz/d/bts=;
 b=aVyPLOrSpxDpqxSe31vs+hjuNorS7Ve+4OFgCZucFsb8IzzFEjyrhxy6HSGAantzEB
 8QOLQiUlk1CbhlmwexOPr8RchU6fNsiW9yQnGpSp6rWXVgZ8NrvpBNlVxvf+XCVNOswI
 n1hvDZjhteFU9KEXnLghhBi7uLRvMciiAM9YsYPdCj8Ond6ueTM2IzDu7OhvhJCrpGjl
 20eUPqPgFTem8wGqbAQt7XpW8GTX4Jo3nMG8EyoCxa5bWYIsNdaoWy9j9Ay8gnLGeUoD
 O3/s8jdYJZZLC51KQlquV/pdbeHfNnj3iy6OA/dmY935VKHINLJKYJD6JQr2ZWmvxfeg
 a5GA==
X-Gm-Message-State: AOAM531vsFOf5GxSfNnv8UAyavLkwn2NVhfxRyp0Ru97TF5xwdQrdy3L
 MdWTsoNHYcIk95Y7aRzXqDVmqKcnBP1tcBY4+up3DOh9crQr6Q==
X-Google-Smtp-Source: ABdhPJzKDhi1XdtWb5NoI6REQCLlGjeVtfWdAgRuAHfkvG04ZRpynipTMuFE47UCikyUaUcpcstTBAQ+TozoXWqy1XU=
X-Received: by 2002:a4a:95c6:0:b0:35f:7f11:7055 with SMTP id
 p6-20020a4a95c6000000b0035f7f117055mr10416308ooi.87.1654538215449; Mon, 06
 Jun 2022 10:56:55 -0700 (PDT)
MIME-Version: 1.0
References: <f08fdb9faeb9646f8306492f0899c5d257045c91.1654537961.git.lucien.xin@gmail.com>
In-Reply-To: <f08fdb9faeb9646f8306492f0899c5d257045c91.1654537961.git.lucien.xin@gmail.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Mon, 6 Jun 2022 13:56:40 -0400
Message-ID: <CADvbK_ctreM5dF_sVkeFVV9-+U1Z=JHT7GJhDCd_Xb+=5VikAg@mail.gmail.com>
To: tipc-discussion@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  fix Jon's email address. On Mon, Jun 6, 2022 at 1:52 PM Xin
 Long wrote: > > After Commit 2af5ae372a4b ("tipc: clean up unused code and
 structures"), > there is no place really using tn->bcbase->inputq. This patch
 is to > de [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.48 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.48 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1nyGyJ-00039T-V5
Subject: Re: [tipc-discussion] [PATCH net-next] tipc: remove inputq from
 tipc_bc_base
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

On Mon, Jun 6, 2022 at 1:52 PM Xin Long <lucien.xin@gmail.com> wrote:
>
> After Commit 2af5ae372a4b ("tipc: clean up unused code and structures"),
> there is no place really using tn->bcbase->inputq. This patch is to
> delete this member from struct tipc_bc_base.
>
> Signed-off-by: Xin Long <lucien.xin@gmail.com>
> ---
>  net/tipc/bcast.c | 22 +---------------------
>  1 file changed, 1 insertion(+), 21 deletions(-)
>
> diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
> index 593846d25214..2293f6caa682 100644
> --- a/net/tipc/bcast.c
> +++ b/net/tipc/bcast.c
> @@ -63,7 +63,6 @@ unsigned long sysctl_tipc_bc_retruni __read_mostly;
>   */
>  struct tipc_bc_base {
>         struct tipc_link *link;
> -       struct sk_buff_head inputq;
>         int dests[MAX_BEARERS];
>         int primary_bearer;
>         bool bcast_support;
> @@ -436,7 +435,6 @@ int tipc_mcast_xmit(struct net *net, struct sk_buff_head *pkts,
>  int tipc_bcast_rcv(struct net *net, struct tipc_link *l, struct sk_buff *skb)
>  {
>         struct tipc_msg *hdr = buf_msg(skb);
> -       struct sk_buff_head *inputq = &tipc_bc_base(net)->inputq;
>         struct sk_buff_head xmitq;
>         int rc;
>
> @@ -456,10 +454,6 @@ int tipc_bcast_rcv(struct net *net, struct tipc_link *l, struct sk_buff *skb)
>
>         tipc_bcbase_xmit(net, &xmitq);
>
> -       /* Any socket wakeup messages ? */
> -       if (!skb_queue_empty(inputq))
> -               tipc_sk_rcv(net, inputq);
> -
>         return rc;
>  }
>
> @@ -470,7 +464,6 @@ int tipc_bcast_rcv(struct net *net, struct tipc_link *l, struct sk_buff *skb)
>  void tipc_bcast_ack_rcv(struct net *net, struct tipc_link *l,
>                         struct tipc_msg *hdr)
>  {
> -       struct sk_buff_head *inputq = &tipc_bc_base(net)->inputq;
>         u16 acked = msg_bcast_ack(hdr);
>         struct sk_buff_head xmitq;
>
> @@ -485,10 +478,6 @@ void tipc_bcast_ack_rcv(struct net *net, struct tipc_link *l,
>         tipc_bcast_unlock(net);
>
>         tipc_bcbase_xmit(net, &xmitq);
> -
> -       /* Any socket wakeup messages ? */
> -       if (!skb_queue_empty(inputq))
> -               tipc_sk_rcv(net, inputq);
>  }
>
>  /* tipc_bcast_synch_rcv -  check and update rcv link with peer's send state
> @@ -499,7 +488,6 @@ int tipc_bcast_sync_rcv(struct net *net, struct tipc_link *l,
>                         struct tipc_msg *hdr,
>                         struct sk_buff_head *retrq)
>  {
> -       struct sk_buff_head *inputq = &tipc_bc_base(net)->inputq;
>         struct tipc_gap_ack_blks *ga;
>         struct sk_buff_head xmitq;
>         int rc = 0;
> @@ -522,9 +510,6 @@ int tipc_bcast_sync_rcv(struct net *net, struct tipc_link *l,
>
>         tipc_bcbase_xmit(net, &xmitq);
>
> -       /* Any socket wakeup messages ? */
> -       if (!skb_queue_empty(inputq))
> -               tipc_sk_rcv(net, inputq);
>         return rc;
>  }
>
> @@ -551,7 +536,6 @@ void tipc_bcast_add_peer(struct net *net, struct tipc_link *uc_l,
>  void tipc_bcast_remove_peer(struct net *net, struct tipc_link *rcv_l)
>  {
>         struct tipc_link *snd_l = tipc_bc_sndlink(net);
> -       struct sk_buff_head *inputq = &tipc_bc_base(net)->inputq;
>         struct sk_buff_head xmitq;
>
>         __skb_queue_head_init(&xmitq);
> @@ -563,10 +547,6 @@ void tipc_bcast_remove_peer(struct net *net, struct tipc_link *rcv_l)
>         tipc_bcast_unlock(net);
>
>         tipc_bcbase_xmit(net, &xmitq);
> -
> -       /* Any socket wakeup messages ? */
> -       if (!skb_queue_empty(inputq))
> -               tipc_sk_rcv(net, inputq);
>  }
>
>  int tipc_bclink_reset_stats(struct net *net, struct tipc_link *l)
> @@ -703,7 +683,7 @@ int tipc_bcast_init(struct net *net)
>                                  BCLINK_WIN_DEFAULT,
>                                  BCLINK_WIN_DEFAULT,
>                                  0,
> -                                &bb->inputq,
> +                                NULL,
>                                  NULL,
>                                  NULL,
>                                  &l))
> --
> 2.31.1
>


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
