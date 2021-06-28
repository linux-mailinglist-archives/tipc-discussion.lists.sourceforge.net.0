Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD4B3B68C9
	for <lists+tipc-discussion@lfdr.de>; Mon, 28 Jun 2021 21:03:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lxwXR-000456-Qx; Mon, 28 Jun 2021 19:03:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <lucien.xin@gmail.com>) id 1lxwXP-00044y-P7
 for tipc-discussion@lists.sourceforge.net; Mon, 28 Jun 2021 19:03:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aIfecspi/Nm9qEWyq3lbZpbzSdH9ocQx6O0N5KS3E9s=; b=B40llxzFkEbuefr9tybyu/RNje
 h9MrOP9bpsSzTFyBCcJ4/dGsFfQ7HaYlku6sWb9o6rCeNchDSkMqYjWozyCSUA1VP+kkJaQ4mgWcY
 7wQDdH6Y4Vas8dRyKN/WgdX+lefwb/1vRD/PLBx46B6ozMpVfsS3YBAxwV+LlW4qwOTs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aIfecspi/Nm9qEWyq3lbZpbzSdH9ocQx6O0N5KS3E9s=; b=IvmHag0yeUqKDyVRVB0Uv1Fq6v
 PM5COyqjZTq85p2v7HivQqetnmlc3p8ByLh3InjVHRcu8FJGw9YmxzhcTEhI7tNqT2dzvECSO7qT2
 ElcYXYxCc9fhXiNeRw73UxLrQFVXmUSv5LJGJTZclqoS7i069QwMoJtfUTMa03CNjbv0=;
Received: from mail-wm1-f43.google.com ([209.85.128.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lxwXM-002EXb-Tw
 for tipc-discussion@lists.sourceforge.net; Mon, 28 Jun 2021 19:03:19 +0000
Received: by mail-wm1-f43.google.com with SMTP id
 l21-20020a05600c1d15b02901e7513b02dbso136691wms.2
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 28 Jun 2021 12:03:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aIfecspi/Nm9qEWyq3lbZpbzSdH9ocQx6O0N5KS3E9s=;
 b=RuBgtV+IcodEbh7oi0Zz+RToapu0wFZsGhPKlfyt4neZcGghCF2OHWl0L+cZPeUdaY
 jlx1ypngvNwm1VWwv62zY5uEYTyViYag1JAYlJZss7JP9JaVnw+/S5YhAwtGjuBi5mTY
 00+oQAUxI8yicrPpcRMUvXEECWR2cCVjXLW0VTWlc9V+Z8nftHowQL3cyBJFWH9Qlokl
 NOFVIzwmlMhHKSDftC+bq+iDsar7E2a52MgV3gGN37vWGeeUMBo/0UYut4YhqoMB1CVM
 4UMjlwSh0L17/XmJJEbMc0RnnyN83rMeL3GstM1qWV4gtcf6hef369rMzkUYSaOtC9qs
 To4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aIfecspi/Nm9qEWyq3lbZpbzSdH9ocQx6O0N5KS3E9s=;
 b=uijFcDHh+4xHQznYUmBTiY/Z4ZGM5bWER9Lmmtl0RRgDeuBUra7Jj1snn+uVvruhLF
 1Dg42buExg96GY61+odcnvV/6gr3EJQ+y0PkKE97QrK3Ufx19dwAf/l5FJNguhczK7bd
 f+fNZuRFi2iEIc2xCVphuRXhKH/LOLdIdP/QQ1klyNwevF1mLDlfEjC5zbn58NPJcNz6
 esoqMaEKima9t538NsV7W2mwkxUmmi8mtw2anofSUMQxfCC3rclEDeOyxI2d2k/0jqFu
 492NXJ2OXX9xivONXJ3G1Yp4Zlip4KEjnU4W2woZEKAFgrzW4tplnWp81ezsgDBvbOe5
 r+Rg==
X-Gm-Message-State: AOAM533BJgGHBEc/kmpci3gDlSkW5VxkbXQ9JfW98pdmc4e6N0Ix0so6
 zlJVPqWKH4JLyLgfn9TOlcKZ+Biy9RAmrfafIsM=
X-Google-Smtp-Source: ABdhPJxeDp0fYviPnNOoQL8n9zor2//ofRMqT4Gnn0mFKXpMmk6OG6JsZfP/5J+TpAxq9BzqA7SgDWnJf+5BbEo/Lms=
X-Received: by 2002:a1c:7402:: with SMTP id p2mr27810545wmc.88.1624906990582; 
 Mon, 28 Jun 2021 12:03:10 -0700 (PDT)
MIME-Version: 1.0
References: <dbb8b1824d1d701ebbd513324232eddafcad835b.1624678815.git.lucien.xin@gmail.com>
 <87pmw7ytw5.fsf@e43.eu>
In-Reply-To: <87pmw7ytw5.fsf@e43.eu>
From: Xin Long <lucien.xin@gmail.com>
Date: Mon, 28 Jun 2021 15:03:00 -0400
Message-ID: <CADvbK_fWLZNMfbs9h0BPgFJPCq0DY-epENTtQsgq=-fC7Zzk0A@mail.gmail.com>
To: Erin Shepherd <erin.shepherd@e43.eu>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.43 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.43 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lxwXM-002EXb-Tw
Subject: Re: [tipc-discussion] [PATCH net-next] tipc: keep the skb in rcv
 queue until the whole data is read
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

On Sun, Jun 27, 2021 at 3:44 PM Erin Shepherd <erin.shepherd@e43.eu> wrote:
>
> Xin Long <lucien.xin@gmail.com> writes:
>
> > Currently, when userspace reads a datagram with a buffer that is
> > smaller than this datagram, the data will be truncated and only
> > part of it can be received by users. It doesn't seem right that
> > users don't know the datagram size and have to use a huge buffer
> > to read it to avoid the truncation.
> >
> > This patch to fix it by keeping the skb in rcv queue until the
> > whole data is read by users. Only the last msg of the datagram
> > will be marked with MSG_EOR, just as TCP/SCTP does.
>
> I agree that the current behavior is suboptimal, but:
>
>  * Isn't this the same behavior that other datagram socket types
>    exhibit? It seems like this would make TIPC behave inconsistently
>    compared to other transports
Yes, SCTP.
Do you see any reliable datagram transports not doing this?

>  * Isn't this a compatibility break with existing software? Particularly
>    existing software will not expect to receive trailers of overlong
>    datagrams
I talked to Jon about this, he seems okay with this.

>
> It feels like this behavior should be activated either with a
> setsockopt(2) call or a new MSG_* flag passed to recv
Anyway, It may not be worth a new sockopt.
I'm thinking to pass MSG_EOR into sendmsg:
  sendmsg(MSG_EOR).
to indicate we don't want the truncating msg.

When the msg flag returns with no MSG_EOR, it means there's more data to read.

Thanks.
>
> - Erin
>
> > Signed-off-by: Xin Long <lucien.xin@gmail.com>
> > ---
> >  net/tipc/socket.c | 30 +++++++++++++++++++++---------
> >  1 file changed, 21 insertions(+), 9 deletions(-)
> >
> > diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> > index 34a97ea36cc8..504e59838b8b 100644
> > --- a/net/tipc/socket.c
> > +++ b/net/tipc/socket.c
> > @@ -1880,6 +1880,7 @@ static int tipc_recvmsg(struct socket *sock, struct msghdr *m,
> >       bool connected = !tipc_sk_type_connectionless(sk);
> >       struct tipc_sock *tsk = tipc_sk(sk);
> >       int rc, err, hlen, dlen, copy;
> > +     struct tipc_skb_cb *skb_cb;
> >       struct sk_buff_head xmitq;
> >       struct tipc_msg *hdr;
> >       struct sk_buff *skb;
> > @@ -1903,6 +1904,7 @@ static int tipc_recvmsg(struct socket *sock, struct msghdr *m,
> >               if (unlikely(rc))
> >                       goto exit;
> >               skb = skb_peek(&sk->sk_receive_queue);
> > +             skb_cb = TIPC_SKB_CB(skb);
> >               hdr = buf_msg(skb);
> >               dlen = msg_data_sz(hdr);
> >               hlen = msg_hdr_sz(hdr);
> > @@ -1922,18 +1924,27 @@ static int tipc_recvmsg(struct socket *sock, struct msghdr *m,
> >
> >       /* Capture data if non-error msg, otherwise just set return value */
> >       if (likely(!err)) {
> > -             copy = min_t(int, dlen, buflen);
> > -             if (unlikely(copy != dlen))
> > -                     m->msg_flags |= MSG_TRUNC;
> > -             rc = skb_copy_datagram_msg(skb, hlen, m, copy);
> > +             int offset = skb_cb->bytes_read;
> > +
> > +             copy = min_t(int, dlen - offset, buflen);
> > +             rc = skb_copy_datagram_msg(skb, hlen + offset, m, copy);
> > +             if (unlikely(rc))
> > +                     goto exit;
> > +             if (unlikely(offset + copy < dlen)) {
> > +                     if (!(flags & MSG_PEEK))
> > +                             skb_cb->bytes_read = offset + copy;
> > +             } else {
> > +                     m->msg_flags |= MSG_EOR;
> > +                     skb_cb->bytes_read = 0;
> > +             }
> >       } else {
> >               copy = 0;
> >               rc = 0;
> > -             if (err != TIPC_CONN_SHUTDOWN && connected && !m->msg_control)
> > +             if (err != TIPC_CONN_SHUTDOWN && connected && !m->msg_control) {
> >                       rc = -ECONNRESET;
> > +                     goto exit;
> > +             }
> >       }
> > -     if (unlikely(rc))
> > -             goto exit;
> >
> >       /* Mark message as group event if applicable */
> >       if (unlikely(grp_evt)) {
> > @@ -1956,9 +1967,10 @@ static int tipc_recvmsg(struct socket *sock, struct msghdr *m,
> >               tipc_node_distr_xmit(sock_net(sk), &xmitq);
> >       }
> >
> > -     tsk_advance_rx_queue(sk);
> > +     if (!skb_cb->bytes_read)
> > +             tsk_advance_rx_queue(sk);
> >
> > -     if (likely(!connected))
> > +     if (likely(!connected) || skb_cb->bytes_read)
> >               goto exit;
> >
> >       /* Send connection flow control advertisement when applicable */
> > --
> > 2.27.0
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
