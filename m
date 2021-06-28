Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E741F3B68F0
	for <lists+tipc-discussion@lfdr.de>; Mon, 28 Jun 2021 21:16:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lxwkI-0002h0-MN; Mon, 28 Jun 2021 19:16:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1lxwkH-0002gf-By
 for tipc-discussion@lists.sourceforge.net; Mon, 28 Jun 2021 19:16:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dMIAPu49uLhY2WhzkrdcArxfSdza05DNBXnt74C0x08=; b=GWkFCtj64cm3FTk1vSe9QkzYmk
 EIRTqzf1550hDN6emKdunNS68xmcfbhNbocgfgTGAvBuxthYvXxZ6w3O+U4Nsddc4SFXlVGhXHZNV
 LAbyn1cxNMM8SeFAujZD5IdziEpo84NxKqg0bbRnm5T2ab9WV0VvY+4simRpF6BBtzew=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dMIAPu49uLhY2WhzkrdcArxfSdza05DNBXnt74C0x08=; b=aIx1MasSBWgbtFMUYElNLhNdb7
 JTJG6mYougFXdQnNxpSCy0Yed/Hk3UYGEcmZTCA0ZNv1zS4F0C8+KtaMJKQKG8hAj+GtPsxuBnMJl
 4Jtc20B7IpmhLeJ4QHXd1dfyoMqhdOqWUnKhViBWhSFYBcSD/2MoinnJ259+NcyZ2nqs=;
Received: from mail-wm1-f54.google.com ([209.85.128.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lxwk3-0007uk-9E
 for tipc-discussion@lists.sourceforge.net; Mon, 28 Jun 2021 19:16:36 +0000
Received: by mail-wm1-f54.google.com with SMTP id
 v20-20020a05600c2154b02901dcefb16af0so733103wml.5
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 28 Jun 2021 12:16:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dMIAPu49uLhY2WhzkrdcArxfSdza05DNBXnt74C0x08=;
 b=vVyZPXLLWcYTb+gVJArQyGk7D+3kUt7CsZ8oA+QxtZOCpyBqyVxivhY+kCfvzE150V
 tJHoekwOTnXwM7i3N4RDDs7+vkSdgisx213MMnDlJf9vrG3cVe+aht1Rw3AuasRYmLfM
 WIgJS2PcQ53LMdUPlqhaQpyT1KGbEXI+azXBNHHwqJip9xSbICzIbo+jebRX4GIrrCqe
 WkvzN4DVOvqhsiCMoHzB4xYa+T3MdQMu3RT9wGTocRsPj1NDidL4wocfwlBvUleEmVK1
 WVGlowMP3Ci9lsPnbiGiPDq0oHto4FxRmy7ycoc6tAGXBtqhncGhN2dsp4YvHRDnT65e
 EEIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dMIAPu49uLhY2WhzkrdcArxfSdza05DNBXnt74C0x08=;
 b=fMoNN32AXQ9caZJ+L83/BUpiwv5DSdWmE+TFJspoPIpVQcu3i/aTQ40u1kbtMLd46t
 r/ZzAkqVYdKXHNiGyfaYGDVf6roya23N/Eu9gY+iWehCTnkzDRLxbqmND5xY4PSNWSyz
 aY0rfsrKVA7wGWBsoXSejtJ/Aq9orMlS41qJJP3ehYiw27eCV625IYCY6hSufk5Vxp2D
 5Daq92CofyIIVjwwP8tRRD3Dy1vTtJx7ZukdmqwcRJJsq/jAEn/PhC0JRcGNV2V9Zf1E
 vFO6nvtGlNeDSPBOb9kq8LatAxKRFjHyEW7JFWKKLF0YquQz5QtppqGPJFuTraloTxXy
 eHNg==
X-Gm-Message-State: AOAM530xdRM4F9953JzDGAicxrPEu2q5W+tYfCvvVkitwtqWK9bvkkUc
 i5BDD2hCCrOJiz3h0buHRrUz189dvVeV4ys/0fA=
X-Google-Smtp-Source: ABdhPJwb4GBcFNUskqYvI8Qo2DF9WE9OnW+zwBvndUaqb6e20VShWyvfqbwehgWneuOmbyQnCVnnSzSMf8m9CwqWrZ4=
X-Received: by 2002:a1c:5413:: with SMTP id i19mr28928672wmb.12.1624907776875; 
 Mon, 28 Jun 2021 12:16:16 -0700 (PDT)
MIME-Version: 1.0
References: <dbb8b1824d1d701ebbd513324232eddafcad835b.1624678815.git.lucien.xin@gmail.com>
 <87pmw7ytw5.fsf@e43.eu>
 <CADvbK_fWLZNMfbs9h0BPgFJPCq0DY-epENTtQsgq=-fC7Zzk0A@mail.gmail.com>
In-Reply-To: <CADvbK_fWLZNMfbs9h0BPgFJPCq0DY-epENTtQsgq=-fC7Zzk0A@mail.gmail.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Mon, 28 Jun 2021 15:16:06 -0400
Message-ID: <CADvbK_ek=-B+QFK3eTZWaNWyckv5+jRt5wsqW4vPhQoNkxcfsw@mail.gmail.com>
To: Erin Shepherd <erin.shepherd@e43.eu>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.54 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.54 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lxwk3-0007uk-9E
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

On Mon, Jun 28, 2021 at 3:03 PM Xin Long <lucien.xin@gmail.com> wrote:
>
> On Sun, Jun 27, 2021 at 3:44 PM Erin Shepherd <erin.shepherd@e43.eu> wrote:
> >
> > Xin Long <lucien.xin@gmail.com> writes:
> >
> > > Currently, when userspace reads a datagram with a buffer that is
> > > smaller than this datagram, the data will be truncated and only
> > > part of it can be received by users. It doesn't seem right that
> > > users don't know the datagram size and have to use a huge buffer
> > > to read it to avoid the truncation.
> > >
> > > This patch to fix it by keeping the skb in rcv queue until the
> > > whole data is read by users. Only the last msg of the datagram
> > > will be marked with MSG_EOR, just as TCP/SCTP does.
> >
> > I agree that the current behavior is suboptimal, but:
> >
> >  * Isn't this the same behavior that other datagram socket types
> >    exhibit? It seems like this would make TIPC behave inconsistently
> >    compared to other transports
> Yes, SCTP.
> Do you see any reliable datagram transports not doing this?
>
> >  * Isn't this a compatibility break with existing software? Particularly
> >    existing software will not expect to receive trailers of overlong
> >    datagrams
> I talked to Jon about this, he seems okay with this.
>
> >
> > It feels like this behavior should be activated either with a
> > setsockopt(2) call or a new MSG_* flag passed to recv
> Anyway, It may not be worth a new sockopt.
> I'm thinking to pass MSG_EOR into sendmsg:
>   sendmsg(MSG_EOR).
sorry, I meant recvmsg();
> to indicate we don't want the truncating msg.
>
> When the msg flag returns with no MSG_EOR, it means there's more data to read.
>
> Thanks.
> >
> > - Erin
> >
> > > Signed-off-by: Xin Long <lucien.xin@gmail.com>
> > > ---
> > >  net/tipc/socket.c | 30 +++++++++++++++++++++---------
> > >  1 file changed, 21 insertions(+), 9 deletions(-)
> > >
> > > diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> > > index 34a97ea36cc8..504e59838b8b 100644
> > > --- a/net/tipc/socket.c
> > > +++ b/net/tipc/socket.c
> > > @@ -1880,6 +1880,7 @@ static int tipc_recvmsg(struct socket *sock, struct msghdr *m,
> > >       bool connected = !tipc_sk_type_connectionless(sk);
> > >       struct tipc_sock *tsk = tipc_sk(sk);
> > >       int rc, err, hlen, dlen, copy;
> > > +     struct tipc_skb_cb *skb_cb;
> > >       struct sk_buff_head xmitq;
> > >       struct tipc_msg *hdr;
> > >       struct sk_buff *skb;
> > > @@ -1903,6 +1904,7 @@ static int tipc_recvmsg(struct socket *sock, struct msghdr *m,
> > >               if (unlikely(rc))
> > >                       goto exit;
> > >               skb = skb_peek(&sk->sk_receive_queue);
> > > +             skb_cb = TIPC_SKB_CB(skb);
> > >               hdr = buf_msg(skb);
> > >               dlen = msg_data_sz(hdr);
> > >               hlen = msg_hdr_sz(hdr);
> > > @@ -1922,18 +1924,27 @@ static int tipc_recvmsg(struct socket *sock, struct msghdr *m,
> > >
> > >       /* Capture data if non-error msg, otherwise just set return value */
> > >       if (likely(!err)) {
> > > -             copy = min_t(int, dlen, buflen);
> > > -             if (unlikely(copy != dlen))
> > > -                     m->msg_flags |= MSG_TRUNC;
> > > -             rc = skb_copy_datagram_msg(skb, hlen, m, copy);
> > > +             int offset = skb_cb->bytes_read;
> > > +
> > > +             copy = min_t(int, dlen - offset, buflen);
> > > +             rc = skb_copy_datagram_msg(skb, hlen + offset, m, copy);
> > > +             if (unlikely(rc))
> > > +                     goto exit;
> > > +             if (unlikely(offset + copy < dlen)) {
> > > +                     if (!(flags & MSG_PEEK))
> > > +                             skb_cb->bytes_read = offset + copy;
> > > +             } else {
> > > +                     m->msg_flags |= MSG_EOR;
> > > +                     skb_cb->bytes_read = 0;
> > > +             }
> > >       } else {
> > >               copy = 0;
> > >               rc = 0;
> > > -             if (err != TIPC_CONN_SHUTDOWN && connected && !m->msg_control)
> > > +             if (err != TIPC_CONN_SHUTDOWN && connected && !m->msg_control) {
> > >                       rc = -ECONNRESET;
> > > +                     goto exit;
> > > +             }
> > >       }
> > > -     if (unlikely(rc))
> > > -             goto exit;
> > >
> > >       /* Mark message as group event if applicable */
> > >       if (unlikely(grp_evt)) {
> > > @@ -1956,9 +1967,10 @@ static int tipc_recvmsg(struct socket *sock, struct msghdr *m,
> > >               tipc_node_distr_xmit(sock_net(sk), &xmitq);
> > >       }
> > >
> > > -     tsk_advance_rx_queue(sk);
> > > +     if (!skb_cb->bytes_read)
> > > +             tsk_advance_rx_queue(sk);
> > >
> > > -     if (likely(!connected))
> > > +     if (likely(!connected) || skb_cb->bytes_read)
> > >               goto exit;
> > >
> > >       /* Send connection flow control advertisement when applicable */
> > > --
> > > 2.27.0
> > >
> > >
> > >
> > > _______________________________________________
> > > tipc-discussion mailing list
> > > tipc-discussion@lists.sourceforge.net
> > > https://lists.sourceforge.net/lists/listinfo/tipc-discussion


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
