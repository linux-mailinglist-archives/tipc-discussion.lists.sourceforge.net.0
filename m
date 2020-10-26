Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDAD298926
	for <lists+tipc-discussion@lfdr.de>; Mon, 26 Oct 2020 10:10:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kWyVu-0004vO-L5; Mon, 26 Oct 2020 09:10:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1kWyVt-0004v4-JG
 for tipc-discussion@lists.sourceforge.net; Mon, 26 Oct 2020 09:10:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QdguTHNAvpEmh2KFUbTlWyGB3F7rPu+dwYWANInuJr8=; b=iaqQGL30SvSNtUXWMR4xrGNGJf
 luCGpp8rjFuSiI8Jpxl5RbQLGH9RVERxDf1h1GheQQD9oS3nIYArrbv9EjYUt5gWIi/izu7Wvp+Mw
 XUVs7voAv5aphdVzIT288GNdDUx4AnFKgylkCDy1VWsrG9/qqJP3pTBSlpBVQwpCAFA0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QdguTHNAvpEmh2KFUbTlWyGB3F7rPu+dwYWANInuJr8=; b=a5nUe6PvqEgV6g1HALRwmEGVd+
 ZhfIQj4jhW1orV5LJBkdUHnNufN8/+m6UcojBKUzrjg1vFZ5XU3ZTJSxX4zpHL1qsvZimJAsx9DrR
 4i482Rf+T0dEvM8B6TsbGr1Np3gm7qWNz4v0ecgd4UT2xGphXd5eB2JoRogkHylUO/Ck=;
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kWyVo-00DyK8-DI
 for tipc-discussion@lists.sourceforge.net; Mon, 26 Oct 2020 09:10:01 +0000
Received: by mail-wm1-f67.google.com with SMTP id v5so10828322wmh.1
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 26 Oct 2020 02:09:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QdguTHNAvpEmh2KFUbTlWyGB3F7rPu+dwYWANInuJr8=;
 b=F011WP/4dpwAqGAUVybNlV1t4ZeAXAv6Ady3cXzUyL3s35eZGqv65N2MfZIzxmVO5n
 lQsU0vHI9ez3N3/ksv61C3xKvfox38RTIfrMipQMR4PqSJujD8Ro1Gz/aFZsYexv/PZD
 YzC1EfXZ24e06DPoYDQuQCL7jrh/A2m+XM4bH2EaxgcyPVVhl95xzb4c2bUlBXmUYF+A
 qODBsGRXApYb8H0kZDw8qgBttZGc3SL8fogXJov9iRLP/+WgwHjoVG1LWoQHxh6qkwKX
 mQTbPpfK/ZBsZz12O/gAP2MV7ERokvNuY0aZcyzXBlLa1qVOQM+T930nsD+B+bOB6nzF
 oULQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QdguTHNAvpEmh2KFUbTlWyGB3F7rPu+dwYWANInuJr8=;
 b=TWT+w7BK3O77H/UrKuyII1b3Gluq74vHpBAYsnfz7K/gn5euiIzN/sLPrV5iQxqT4U
 xTnV92P/wVvlYa9OwFNPze9qjpQx7/YRvgbszECkWHxw2HzYOpvykA49QyzPr77gD+qa
 whNf8oxWdujsBMAs4HQtio++vPhcXmrKAiL3KsNZ4V9tyHXQz6SsZw3/DL475q82e90a
 mgY3o+HMq4KCGdFfHvRgL/Z/Hx8z0jRX6CAtzV4O02SMm3POhakGVi1AHwtDoiHX9zYh
 Fr7B7/IrLS30KNaHK+cou0az2OYAIe265z7b6MQ5n0W3sYSR3N757EbrjaMMogUb09ar
 PRxg==
X-Gm-Message-State: AOAM531un6rbH4NY920kMS2q0Tp2JcvVxy54PV+UEGypBdCSBAJVGdvJ
 IgCPDRvbSCY4nwGcEmib4/e2knafbNCFXFlEkJA=
X-Google-Smtp-Source: ABdhPJwCLrGjSNj1WOEDLfyHVKIHZTNqAF2WiYZmMAFJ3mxUtjDZiYkWZfVuXEz2i9To7tkBjOoi2f2icTR0XgGHszE=
X-Received: by 2002:a1c:48d4:: with SMTP id
 v203mr14707755wma.122.1603703390064; 
 Mon, 26 Oct 2020 02:09:50 -0700 (PDT)
MIME-Version: 1.0
References: <20201023081931.23670-1-tung.q.nguyen@dektech.com.au>
In-Reply-To: <20201023081931.23670-1-tung.q.nguyen@dektech.com.au>
From: Xin Long <lucien.xin@gmail.com>
Date: Mon, 26 Oct 2020 17:09:38 +0800
Message-ID: <CADvbK_dmqSkOKrYKhF4QgLndV=i-50hF7bLCpdMJz-1W87f_Kg@mail.gmail.com>
To: Tung Nguyen <tung.q.nguyen@dektech.com.au>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.67 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
X-Headers-End: 1kWyVo-00DyK8-DI
Subject: Re: [tipc-discussion] [net v1 1/1] tipc: fix memory leak caused by
 tipc_buf_append()
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
Cc: tipc-discussion@lists.sourceforge.net, Cong Wang <xiyou.wangcong@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On Fri, Oct 23, 2020 at 4:20 PM Tung Nguyen
<tung.q.nguyen@dektech.com.au> wrote:
>
> Commit ed42989eab57 ("fix the skb_unshare() in tipc_buf_append()")
> replaced skb_unshare() with skb_copy() to not reduce the data reference
> counter of the original skb intentionally. This is not the correct
> way to handle the cloned skb because it causes memory leak in 2
> following cases:
>  1/ Sending multicast messages via broadcast link
>   The original skb list is cloned to the local skb list for local
>   destination. After that, the data reference counter of each skb
>   in the original list has the value of 2. This causes each skb not
>   to be freed after receiving ACK:
>   tipc_link_advance_transmq()
>   {
>    ...
>    /* release skb */
>    __skb_unlink(skb, &l->transmq);
>    kfree_skb(skb); <-- memory exists after being freed
>   }
>
>  2/ Sending multicast messages via replicast link
>   Similar to the above case, each skb cannot be freed after purging
>   the skb list:
>   tipc_mcast_xmit()
>   {
>    ...
>    __skb_queue_purge(pkts); <-- memory exists after being freed
>   }
>
> This commit fixes this issue by using skb_unshare() instead. Besides,
> to avoid use-after-free error reported by KASAN, kfree_skb(head) in
> tipc_buf_append() is called only if the pointer to the appending skb
> is not NULL.
>
> v2: improve condition for freeing the appending skb to cover all error
> cases.
>
> Fixes: ed42989eab57 ("fix the skb_unshare() in tipc_buf_append()")
> Reported-by: Thang Hoang Ngo <thang.h.ngo@dektech.com.au>
> Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
> ---
>  net/tipc/msg.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/net/tipc/msg.c b/net/tipc/msg.c
> index 2a78aa701572..46c36c5093de 100644
> --- a/net/tipc/msg.c
> +++ b/net/tipc/msg.c
> @@ -150,8 +150,7 @@ int tipc_buf_append(struct sk_buff **headbuf, struct sk_buff **buf)
>         if (fragid == FIRST_FRAGMENT) {
>                 if (unlikely(head))
>                         goto err;
> -               if (skb_cloned(frag))
> -                       frag = skb_copy(frag, GFP_ATOMIC);
> +               frag = skb_unshare(frag, GFP_ATOMIC);
>                 if (unlikely(!frag))
>                         goto err;
>                 head = *headbuf = frag;
> @@ -797,7 +796,8 @@ bool tipc_msg_reassemble(struct sk_buff_head *list, struct sk_buff_head *rcvq)
>         return true;
>  error:
>         pr_warn("Failed do clone local mcast rcv buffer\n");
> -       kfree_skb(head);
> +       if (head)
> +               kfree_skb(head);
Hi Tung,

kfree_skb(NULL) won't cause any use-after-free issue, as kfree_skb(skb)
will return when skb is NULL.

The root cause of use-after-free is as Cong fixed in
commit ed42989eab57 ("fix the skb_unshare() in tipc_buf_append()"):

When skb_unshare() returns NULL, the 'frag' is freed, and on the err
path the 'buf'(==the 'frag') get freed again, then the original skb
is freed.

But that commit indeed caused the memleak on the success path, and
the right fix should be:

diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index 2a78aa7..73068fb 100644
--- a/net/tipc/msg.c
+++ b/net/tipc/msg.c
@@ -155,6 +155,7 @@ int tipc_buf_append(struct sk_buff **headbuf,
struct sk_buff **buf)
                if (unlikely(!frag))
                        goto err;
                head = *headbuf = frag;
+               kfree_skb(*buf)
                *buf = NULL;
                TIPC_SKB_CB(head)->tail = NULL;
                if (skb_is_nonlinear(head)) {

or:

diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index 2a78aa7..32c79c5 100644
--- a/net/tipc/msg.c
+++ b/net/tipc/msg.c
@@ -150,12 +150,11 @@ int tipc_buf_append(struct sk_buff **headbuf,
struct sk_buff **buf)
        if (fragid == FIRST_FRAGMENT) {
                if (unlikely(head))
                        goto err;
-               if (skb_cloned(frag))
-                       frag = skb_copy(frag, GFP_ATOMIC);
+               *buf = NULL;
+               frag = skb_unshare(frag, GFP_ATOMIC);
                if (unlikely(!frag))
                        goto err;
                head = *headbuf = frag;
-               *buf = NULL;
                TIPC_SKB_CB(head)->tail = NULL;
                if (skb_is_nonlinear(head)) {
                        skb_walk_frags(head, tail) {

Thanks.

>         return false;
>  }
>
> --
> 2.17.1
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
