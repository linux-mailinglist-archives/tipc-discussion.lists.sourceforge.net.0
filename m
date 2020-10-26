Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A1470298979
	for <lists+tipc-discussion@lfdr.de>; Mon, 26 Oct 2020 10:35:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kWyug-0005XO-Jh; Mon, 26 Oct 2020 09:35:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1kWyub-0005W8-Iq
 for tipc-discussion@lists.sourceforge.net; Mon, 26 Oct 2020 09:35:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FE9iAC35jsQt7C/eiW566N/WZFImTtKJM5DLH2750Lo=; b=amjGKJiWhN25TC1uiKGVNLFLgR
 bTIoPz4teHT1O21DpeA+BPLqDyrPSXLAMcYtOUhLmm1N77/uq+aXNncnv7bireeMw88DaSzj4oI9q
 fiGjNCcU1ox8nAQo6n7+BoaQYwIbIS4G0jDr2HZA7tusZb4czGsnMuIlbImp/e8DmO1g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FE9iAC35jsQt7C/eiW566N/WZFImTtKJM5DLH2750Lo=; b=kBYJEz3/PWz3Zc+1NbvouloP2b
 hhaYP/G0QZFXlJuVJFwZH9EenDOdW4fd5Rknj2Ocybb0NIBriPzYRKU86dP5mW55fZjlJjzZnkz8w
 QFUm9Ar0XhwIE7DuemVWCZehQlb1AJvoyr0Gc15UOD5Pk/LDFDs+9ySmOcyWyK3BjvMg=;
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kWyuP-00E054-LI
 for tipc-discussion@lists.sourceforge.net; Mon, 26 Oct 2020 09:35:33 +0000
Received: by mail-wr1-f66.google.com with SMTP id s9so11537721wro.8
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 26 Oct 2020 02:35:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FE9iAC35jsQt7C/eiW566N/WZFImTtKJM5DLH2750Lo=;
 b=QPUqxmCRdDcWtUJvdUmR/f/0ue97TpbYhKHbIzuV7UFaWRZ4Ksilyry2Jdo44f5Z3f
 0AQKM9hUys4tBHgCCEOWxm0DT3N+OXaHNw9mysf+lGLWcpSl0KNdGD8FWrbCX/oLATT2
 3PsmT4quHJUFDkytOok7dYLL9Yq7qguY4eIMXueD4CQpUGzTZn5R9b+IoXER1+iKW/n8
 ig0tzmJKn0p+vAszSP4ruZre+KRvsuqbLRAUzVD82qsA1lcTXJ2JhujRzKDBUarRyeVj
 am82P2lCGLmtJwZ22VV/02JMNxEC6pEu2eQKCNBO3PJGQjoELrssvR3xTU4bI5XoyM5D
 2MGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FE9iAC35jsQt7C/eiW566N/WZFImTtKJM5DLH2750Lo=;
 b=fDbk/zfpBmB5Lt+eDnx423H2mVa8OTb/rtc4xwPdM3h3x1Zf/+KkkCsZ1WdELjw7mz
 fUcmHLxgvSpBPANuECtYmxZXoYEJLqJJshPYK2ViEmqWE9dVPhPYnHJ0JJFXqbkW59uh
 Dk4mWAvdbQpM3ypGkFlFiJEDVcVovozMnenrB57AjvLqLXEUWz1f+DQ9gIP8mNNgh+2N
 QCRaCWWMIpYs0R14zDBeumKWedu9ZwwlCMFfGgGk9NSb8MbYh4dzlqNxvd04feTNBK9C
 8Dh50Bfd3E6s2jy0Dd2+4H0F1BGPRCA5MpU7w7Dm4XZTS6tmGnEQdrOfHfKgrAFvtsxX
 F2MQ==
X-Gm-Message-State: AOAM532mti53mUuHNSaT0xO5SBR4nZGxL1wBAby3GBBNa5Fu37+LLfSm
 dMCyHSaqOYU+eYCvbqmv2r2nTu9usLRfzbGo4ZU=
X-Google-Smtp-Source: ABdhPJx9DW5+XLmwQ+pkqmGM0q6d3kw4lH+n2zl9Wre6QysYXB4QfyGvjMuDgD4DnLjx1jmedVWIBbiDm5JPzZ0IdEM=
X-Received: by 2002:adf:e881:: with SMTP id d1mr16766223wrm.395.1603704915330; 
 Mon, 26 Oct 2020 02:35:15 -0700 (PDT)
MIME-Version: 1.0
References: <20201023081931.23670-1-tung.q.nguyen@dektech.com.au>
 <CADvbK_dmqSkOKrYKhF4QgLndV=i-50hF7bLCpdMJz-1W87f_Kg@mail.gmail.com>
 <DB7PR05MB43158C3BFADBD52C2C92FA6F88190@DB7PR05MB4315.eurprd05.prod.outlook.com>
In-Reply-To: <DB7PR05MB43158C3BFADBD52C2C92FA6F88190@DB7PR05MB4315.eurprd05.prod.outlook.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Mon, 26 Oct 2020 17:35:03 +0800
Message-ID: <CADvbK_dN0SZxbav4uMbQO6dUQo55Go2J3W_cCNoF0BZJe9YGXA@mail.gmail.com>
To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kWyuP-00E054-LI
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
Cc: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, Cong Wang <xiyou.wangcong@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On Mon, Oct 26, 2020 at 5:30 PM Tung Quang Nguyen
<tung.q.nguyen@dektech.com.au> wrote:
>
> Hi Xin,
>
> Yes, I know that it should not be a problem if skb_free(NULL) is called.
> But I relied on your analysis for syzbot report:
> "
> in tipc_msg_reassemble():
>
>                 if ((&head, &frag))
>                         break;
>                 if (!head)
>                         goto error; <--- [1]
>         }
>         __skb_queue_tail(rcvq, frag);
>         return true;
> error:
>         pr_warn("Failed do clone local mcast rcv buffer\n");
>         kfree_skb(head); <---[2]
>         return false;
>
> when head is NULL at [1], it goes [2] and could cause a crash.
> from the log, we can see "Failed do clone local mcast rcv buffer" as well.
> "
>
> I will check again your new analysis and create the correct patch.
Sorry, I realized it was a false one after double-checking.

>
> Thanks.
> Tung Nguyen
>
> -----Original Message-----
> From: Xin Long <lucien.xin@gmail.com>
> Sent: Monday, October 26, 2020 4:10 PM
> To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
> Cc: tipc-discussion@lists.sourceforge.net; Jon Maloy <jmaloy@redhat.com>; maloy@donjonn.com; Ying Xue <ying.xue@windriver.com>; Cong Wang <xiyou.wangcong@gmail.com>
> Subject: Re: [tipc-discussion] [net v1 1/1] tipc: fix memory leak caused by tipc_buf_append()
>
> On Fri, Oct 23, 2020 at 4:20 PM Tung Nguyen
> <tung.q.nguyen@dektech.com.au> wrote:
> >
> > Commit ed42989eab57 ("fix the skb_unshare() in tipc_buf_append()")
> > replaced skb_unshare() with skb_copy() to not reduce the data reference
> > counter of the original skb intentionally. This is not the correct
> > way to handle the cloned skb because it causes memory leak in 2
> > following cases:
> >  1/ Sending multicast messages via broadcast link
> >   The original skb list is cloned to the local skb list for local
> >   destination. After that, the data reference counter of each skb
> >   in the original list has the value of 2. This causes each skb not
> >   to be freed after receiving ACK:
> >   tipc_link_advance_transmq()
> >   {
> >    ...
> >    /* release skb */
> >    __skb_unlink(skb, &l->transmq);
> >    kfree_skb(skb); <-- memory exists after being freed
> >   }
> >
> >  2/ Sending multicast messages via replicast link
> >   Similar to the above case, each skb cannot be freed after purging
> >   the skb list:
> >   tipc_mcast_xmit()
> >   {
> >    ...
> >    __skb_queue_purge(pkts); <-- memory exists after being freed
> >   }
> >
> > This commit fixes this issue by using skb_unshare() instead. Besides,
> > to avoid use-after-free error reported by KASAN, kfree_skb(head) in
> > tipc_buf_append() is called only if the pointer to the appending skb
> > is not NULL.
> >
> > v2: improve condition for freeing the appending skb to cover all error
> > cases.
> >
> > Fixes: ed42989eab57 ("fix the skb_unshare() in tipc_buf_append()")
> > Reported-by: Thang Hoang Ngo <thang.h.ngo@dektech.com.au>
> > Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
> > ---
> >  net/tipc/msg.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/net/tipc/msg.c b/net/tipc/msg.c
> > index 2a78aa701572..46c36c5093de 100644
> > --- a/net/tipc/msg.c
> > +++ b/net/tipc/msg.c
> > @@ -150,8 +150,7 @@ int tipc_buf_append(struct sk_buff **headbuf, struct sk_buff **buf)
> >         if (fragid == FIRST_FRAGMENT) {
> >                 if (unlikely(head))
> >                         goto err;
> > -               if (skb_cloned(frag))
> > -                       frag = skb_copy(frag, GFP_ATOMIC);
> > +               frag = skb_unshare(frag, GFP_ATOMIC);
> >                 if (unlikely(!frag))
> >                         goto err;
> >                 head = *headbuf = frag;
> > @@ -797,7 +796,8 @@ bool tipc_msg_reassemble(struct sk_buff_head *list, struct sk_buff_head *rcvq)
> >         return true;
> >  error:
> >         pr_warn("Failed do clone local mcast rcv buffer\n");
> > -       kfree_skb(head);
> > +       if (head)
> > +               kfree_skb(head);
> Hi Tung,
>
> kfree_skb(NULL) won't cause any use-after-free issue, as kfree_skb(skb)
> will return when skb is NULL.
>
> The root cause of use-after-free is as Cong fixed in
> commit ed42989eab57 ("fix the skb_unshare() in tipc_buf_append()"):
>
> When skb_unshare() returns NULL, the 'frag' is freed, and on the err
> path the 'buf'(==the 'frag') get freed again, then the original skb
> is freed.
>
> But that commit indeed caused the memleak on the success path, and
> the right fix should be:
>
> diff --git a/net/tipc/msg.c b/net/tipc/msg.c
> index 2a78aa7..73068fb 100644
> --- a/net/tipc/msg.c
> +++ b/net/tipc/msg.c
> @@ -155,6 +155,7 @@ int tipc_buf_append(struct sk_buff **headbuf,
> struct sk_buff **buf)
>                 if (unlikely(!frag))
>                         goto err;
>                 head = *headbuf = frag;
> +               kfree_skb(*buf)
>                 *buf = NULL;
>                 TIPC_SKB_CB(head)->tail = NULL;
>                 if (skb_is_nonlinear(head)) {
This should be:

@@ -150,10 +150,12 @@ int tipc_buf_append(struct sk_buff **headbuf,
struct sk_buff **buf)
        if (fragid == FIRST_FRAGMENT) {
                if (unlikely(head))
                        goto err;
-               if (skb_cloned(frag))
+               if (skb_cloned(frag)) {
                        frag = skb_copy(frag, GFP_ATOMIC);
-               if (unlikely(!frag))
-                       goto err;
+                       if (unlikely(!frag))
+                               goto err;
+                       kfree_skb(*buf)
+               }

>
> or:
>
> diff --git a/net/tipc/msg.c b/net/tipc/msg.c
> index 2a78aa7..32c79c5 100644
> --- a/net/tipc/msg.c
> +++ b/net/tipc/msg.c
> @@ -150,12 +150,11 @@ int tipc_buf_append(struct sk_buff **headbuf,
> struct sk_buff **buf)
>         if (fragid == FIRST_FRAGMENT) {
>                 if (unlikely(head))
>                         goto err;
> -               if (skb_cloned(frag))
> -                       frag = skb_copy(frag, GFP_ATOMIC);
> +               *buf = NULL;
> +               frag = skb_unshare(frag, GFP_ATOMIC);
>                 if (unlikely(!frag))
>                         goto err;
>                 head = *headbuf = frag;
> -               *buf = NULL;
>                 TIPC_SKB_CB(head)->tail = NULL;
>                 if (skb_is_nonlinear(head)) {
>                         skb_walk_frags(head, tail) {
>
> Thanks.
>
> >         return false;
> >  }
> >
> > --
> > 2.17.1
> >
> >
> >
> > _______________________________________________
> > tipc-discussion mailing list
> > tipc-discussion@lists.sourceforge.net
> > https://lists.sourceforge.net/lists/listinfo/tipc-discussion


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
