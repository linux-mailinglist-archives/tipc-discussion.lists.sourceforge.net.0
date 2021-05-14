Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E65380D85
	for <lists+tipc-discussion@lfdr.de>; Fri, 14 May 2021 17:42:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lhZxc-0008Rv-1L; Fri, 14 May 2021 15:42:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1lhZxa-0008Ra-Ki
 for tipc-discussion@lists.sourceforge.net; Fri, 14 May 2021 15:42:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DbpSu1DQgvf8VS1gfiE9jWJWKeky4Oqjs59uFCtcifg=; b=mtnYXPUtG6kpocVjHGjybRULty
 NOXHpXxMHveNhcm7Gx501VlocZXYiUt5KGXosKnWbkzUe1HkSCWMLXgArkNSV6blbmO1j9BvBxvdE
 5+3vZ+7JWzjKdTl6qo2g9/eTMNpRIwrfgA/sQCxbPSE1Vxin8ugczfPEuylEVwEu+Buk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DbpSu1DQgvf8VS1gfiE9jWJWKeky4Oqjs59uFCtcifg=; b=Y3r5496VVGpSJdi2AKVoLYCF1l
 dQ0ayt5coNq1dVfNs0ZkXG0emMf8PQP6aGbXzajoZx+mdm17COXjKy646/wlOAO6fqoj9YtTELbc0
 8rgtatyFza6FAR8BfktIHypsBpmJfP2c/EroxEWeFzh1Ulul+nVqwd1ibcCb/N1YrSsI=;
Received: from mail-wr1-f44.google.com ([209.85.221.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lhZxV-0002mk-Kv
 for tipc-discussion@lists.sourceforge.net; Fri, 14 May 2021 15:42:42 +0000
Received: by mail-wr1-f44.google.com with SMTP id m9so30461782wrx.3
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 14 May 2021 08:42:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DbpSu1DQgvf8VS1gfiE9jWJWKeky4Oqjs59uFCtcifg=;
 b=VMMcCsPthYoHA49mdHEmVRMCstH1FuZ3w1FmDhLpC1cXjd5htjlyxnom1z7Ayf5XjG
 mWbqOq5StJod/QflGq5898s6OIV9ZXcYQlVcAoAV5xKOAOuh+F+NQqSun6CfYlaQtEhx
 l5Mi4rIGpdF64YGZI5iXW3yUAIOq5o7D5qsyT+kiXwBs3gNSlLdXOyxg0sO3Yb4XfWfn
 QEmqWU48lUwJsswG9RVwXQibsV0nw2TMUsOFeULRoqRbh07kUod1QmFpYnD248ToSyZ4
 VoY4f+SaEkGrWpeDSRc0/wLEqcCsBye1/kz65/ljLfSc+e82H7ftCmO/n8z7GOmBM9oT
 lN4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DbpSu1DQgvf8VS1gfiE9jWJWKeky4Oqjs59uFCtcifg=;
 b=So/AWXOzhzTgt6hUM7WayKr0j6+S7PNZ31D6T24Q+DS38L9Dx2Hg5TVdXlSmP3/rM7
 QOS+MlXO/taovWb3g/wPfurvadkAabRcDHUOmBiLM/pg4XyDaNfFoR9TTOVtou2egxog
 myuV+LSj7bQhV4XmN07asSfoSYrPLaoi8lxUwWoI/CQoWv8t9mgD7JHKBRb7yOxIZads
 viPy5sTZ/RlB/qmos5/EdIITfH1kbfyNbyy3A1MGyotgQwrIueh9W+EbMIk2naq00Ypy
 fYbuhYUB4FxXKcGNzELgGN+rub/mHfpR6XNT4K+mUeA52cNO+zheIHoG0pQ50oHr0Kz0
 eMAw==
X-Gm-Message-State: AOAM531Pb7eup7O+nS8lITxQz9kPmKBWXzOYANgksx0g2n1qZRMzfYZG
 u5x8aEvclGRDvjXUn6o24YAJEzhCJQKCZ5npZLg=
X-Google-Smtp-Source: ABdhPJyvhRpA9A1TpwNJViUp1mC1HRPysAteJOcbP0Du9m1Bk1XNr11g8tm9NV6vZSAd72hbznfHhAEnSWPerW6Nkhk=
X-Received: by 2002:a5d:4c8a:: with SMTP id z10mr59770867wrs.395.1621006952013; 
 Fri, 14 May 2021 08:42:32 -0700 (PDT)
MIME-Version: 1.0
References: <25c57c05b6f5cc81fd49b8f060ebf0961ea8af68.1619638230.git.lucien.xin@gmail.com>
 <3dd765e7-3509-1813-e1fe-894d26843c2e@redhat.com>
In-Reply-To: <3dd765e7-3509-1813-e1fe-894d26843c2e@redhat.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Fri, 14 May 2021 11:42:19 -0400
Message-ID: <CADvbK_eny7GP3uNs=ymxCNOfi=uoXJ9XFGGi8GYPLxbTwq-56g@mail.gmail.com>
To: Jon Maloy <jmaloy@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.44 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.44 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lhZxV-0002mk-Kv
Subject: Re: [tipc-discussion] [PATCH net] tipc: fix a race in
 tipc_sk_mcast_rcv
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

On Thu, May 13, 2021 at 5:15 PM Jon Maloy <jmaloy@redhat.com> wrote:
>
>
>
> On 4/28/21 3:30 PM, Xin Long wrote:
> > After commit cb1b728096f5 ("tipc: eliminate race condition at multicast
> > reception"), when processing the multicast reception, the packets are
> > firstly moved from be->inputq1 to be->arrvq in tipc_node_broadcast(),
> > then process be->arrvq in tipc_sk_mcast_rcv().
> >
> > In tipc_sk_mcast_rcv(), it gets the 1st skb by skb_peek(), then process
> > this skb without any lock. It means meanwhile another thread could also
> > call tipc_sk_mcast_rcv() and process be->arrvq and pick up the same skb,
> > then free it. A double free issue will be caused as Li Shuang reported:
> >
> >    [] kernel BUG at mm/slub.c:305!
> >    []  kfree+0x3a7/0x3d0
> >    []  kfree_skb+0x32/0xa0
> >    []  skb_release_data+0xb4/0x170
> >    []  kfree_skb+0x32/0xa0
> >    []  skb_release_data+0xb4/0x170
> >    []  kfree_skb+0x32/0xa0
> >    []  tipc_sk_mcast_rcv+0x1fa/0x380 [tipc]
> >    []  tipc_rcv+0x411/0x1120 [tipc]
> >    []  tipc_udp_recv+0xc6/0x1e0 [tipc]
> >    []  udp_queue_rcv_one_skb+0x1a9/0x500
> >    []  udp_unicast_rcv_skb.isra.66+0x75/0x90
> >    []  __udp4_lib_rcv+0x537/0xc40
> >    []  ip_protocol_deliver_rcu+0xdf/0x1d0
> >    []  ip_local_deliver_finish+0x4a/0x50
> >    []  ip_local_deliver+0x6b/0xe0
> >    []  ip_rcv+0x27b/0x36a
> >    []  __netif_receive_skb_core+0xb47/0xc40
> >    []  process_backlog+0xae/0x160
> >
> > Commit 6bf24dc0cc0c ("net:tipc: Fix a double free in tipc_sk_mcast_rcv")
> > tried to fix this double free by not releasing the skbs in be->arrvq,
> > which would definitely cause the skbs' leak.
> >
> > The problem is we shouldn't process the skbs in be->arrvq without any
> > lock to protect the code from peeking to dequeuing them. The fix here
> > is to use a temp skb list instead of be->arrvq to make it "per thread
> > safe". While at it, remove the no-longer-used be->arrvq.
> >
> > Fixes: cb1b728096f5 ("tipc: eliminate race condition at multicast reception")
> > Fixes: 6bf24dc0cc0c ("net:tipc: Fix a double free in tipc_sk_mcast_rcv")
> > Reported-by: Li Shuang <shuali@redhat.com>
> > Signed-off-by: Xin Long <lucien.xin@gmail.com>
> > ---
> >   net/tipc/node.c   |  9 ++++-----
> >   net/tipc/socket.c | 16 +++-------------
> >   2 files changed, 7 insertions(+), 18 deletions(-)
> >
> > diff --git a/net/tipc/node.c b/net/tipc/node.c
> > index e0ee832..0c636fb 100644
> > --- a/net/tipc/node.c
> > +++ b/net/tipc/node.c
> > @@ -72,7 +72,6 @@ struct tipc_link_entry {
> >   struct tipc_bclink_entry {
> >       struct tipc_link *link;
> >       struct sk_buff_head inputq1;
> > -     struct sk_buff_head arrvq;
> >       struct sk_buff_head inputq2;
> >       struct sk_buff_head namedq;
> >       u16 named_rcv_nxt;
> > @@ -552,7 +551,6 @@ struct tipc_node *tipc_node_create(struct net *net, u32 addr, u8 *peer_id,
> >       INIT_LIST_HEAD(&n->conn_sks);
> >       skb_queue_head_init(&n->bc_entry.namedq);
> >       skb_queue_head_init(&n->bc_entry.inputq1);
> > -     __skb_queue_head_init(&n->bc_entry.arrvq);
> >       skb_queue_head_init(&n->bc_entry.inputq2);
> >       for (i = 0; i < MAX_BEARERS; i++)
> >               spin_lock_init(&n->links[i].lock);
> > @@ -1803,14 +1801,15 @@ void tipc_node_broadcast(struct net *net, struct sk_buff *skb, int rc_dests)
> >   static void tipc_node_mcast_rcv(struct tipc_node *n)
> >   {
> >       struct tipc_bclink_entry *be = &n->bc_entry;
> > +     struct sk_buff_head tmpq;
> >
> > -     /* 'arrvq' is under inputq2's lock protection */
> > +     __skb_queue_head_init(&tmpq);
> >       spin_lock_bh(&be->inputq2.lock);
> >       spin_lock_bh(&be->inputq1.lock);
> > -     skb_queue_splice_tail_init(&be->inputq1, &be->arrvq);
> > +     skb_queue_splice_tail_init(&be->inputq1, &tmpq);
> >       spin_unlock_bh(&be->inputq1.lock);
> >       spin_unlock_bh(&be->inputq2.lock);
> > -     tipc_sk_mcast_rcv(n->net, &be->arrvq, &be->inputq2);
> > +     tipc_sk_mcast_rcv(n->net, &tmpq, &be->inputq2);
> >   }
> >
> >   static void tipc_node_bc_sync_rcv(struct tipc_node *n, struct tipc_msg *hdr,
> > diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> > index 022999e..2870798 100644
> > --- a/net/tipc/socket.c
> > +++ b/net/tipc/socket.c
> > @@ -1210,8 +1210,7 @@ void tipc_sk_mcast_rcv(struct net *net, struct sk_buff_head *arrvq,
> >       __skb_queue_head_init(&tmpq);
> >       INIT_LIST_HEAD(&dports);
> >
> > -     skb = tipc_skb_peek(arrvq, &inputq->lock);
> > -     for (; skb; skb = tipc_skb_peek(arrvq, &inputq->lock)) {
> > +     while ((skb = __skb_dequeue(arrvq)) != NULL) {
> >               hdr = buf_msg(skb);
> >               user = msg_user(hdr);
> >               mtyp = msg_type(hdr);
> > @@ -1220,13 +1219,7 @@ void tipc_sk_mcast_rcv(struct net *net, struct sk_buff_head *arrvq,
> >               type = msg_nametype(hdr);
> >
> >               if (mtyp == TIPC_GRP_UCAST_MSG || user == GROUP_PROTOCOL) {
> > -                     spin_lock_bh(&inputq->lock);
> > -                     if (skb_peek(arrvq) == skb) {
> > -                             __skb_dequeue(arrvq);
> > -                             __skb_queue_tail(inputq, skb);
> > -                     }
> > -                     kfree_skb(skb);
> > -                     spin_unlock_bh(&inputq->lock);
> > +                     skb_queue_tail(inputq, skb);
> >                       continue;
> >               }
> >
> > @@ -1263,10 +1256,7 @@ void tipc_sk_mcast_rcv(struct net *net, struct sk_buff_head *arrvq,
> >               }
> >               /* Append to inputq if not already done by other thread */
> >               spin_lock_bh(&inputq->lock);
> > -             if (skb_peek(arrvq) == skb) {
> > -                     skb_queue_splice_tail_init(&tmpq, inputq);
> > -                     __skb_dequeue(arrvq);
> > -             }
> > +             skb_queue_splice_tail_init(&tmpq, inputq);
> >               spin_unlock_bh(&inputq->lock);
> >               __skb_queue_purge(&tmpq);
> >               kfree_skb(skb);
> Nack.
>
> This would invalidate the sequence guarantee of messages between two
> specific sockets.
> The whole point of having a lock protected arrival queue is to preserve
> the order when messages are moved from inputq1 to inputq2.
> Let's take a discussion on our mailing list.
>
Hi, Jon, thanks for checking this.

I'm making this tipc-discussion only.
The problem you're saying exists even without this patch.
unless we lock it until this dequeued skb enter into the sk's receive queue,
something like:

lock()
skb=dequeue(arrv)
...
tipc_sk_rcv(skb)
unlock()

that's also what other protocols are doing, and the bad side is less
parallel processing.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
