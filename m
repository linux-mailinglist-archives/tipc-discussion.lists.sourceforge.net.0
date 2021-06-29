Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0B13B79FE
	for <lists+tipc-discussion@lfdr.de>; Tue, 29 Jun 2021 23:41:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lyLUK-0004wL-C7; Tue, 29 Jun 2021 21:41:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1lyLUJ-0004w7-8u
 for tipc-discussion@lists.sourceforge.net; Tue, 29 Jun 2021 21:41:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O4wdXIxuCS34bHJe94XUkjpTpwy8Po+XPWcqbmgQn1w=; b=i3GPBAGIZETRRfbBjhtogrihyk
 DxF8cDSv5hk7F7vJfekhEirH8tDNb9TTAif3k1lDDkNj6WArv4Lyuvq6sXvEvB5handD3icr3s4+x
 EJN7foo9DN0Cy/hGYdEg4gDbCBSNgwBdKK2XfFb2NCiEQx31CCht2mIJIckqgkgJbdZw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=O4wdXIxuCS34bHJe94XUkjpTpwy8Po+XPWcqbmgQn1w=; b=Tfq7Vil798lIivdgc+KLwKYnXC
 8NICdp/f64G9SESCuthE5oWnm5p6SjAGdLb0n0lyPSvUt96B3oRXvdt2uVXFj2c3CVsqLvxAhSHXe
 OWL3XaYh/NdUMxYv+jxw2tA7VGe9fPhuQnkefMfd1ijXFLZoktQBiK017L98CjAb8hRE=;
Received: from mail-wr1-f50.google.com ([209.85.221.50])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lyLUG-003yVs-8r
 for tipc-discussion@lists.sourceforge.net; Tue, 29 Jun 2021 21:41:47 +0000
Received: by mail-wr1-f50.google.com with SMTP id p8so904087wrr.1
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 29 Jun 2021 14:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O4wdXIxuCS34bHJe94XUkjpTpwy8Po+XPWcqbmgQn1w=;
 b=lv8LNbYmxpSU+N0oAhmVD5kOtCQ0SCQxyRkIVm4DPIERmXSWB6SasvnQtyRQWdmj/B
 4NB37nRuGybCnmn2vesx0nj0GEQY/KEjEa2l+HC3FHfCVNbwFwK8rKZ+5qH47Lgxm//l
 Lu1p0STI8w7BpOdKU1MdkRbVCya2fR3l1pD+4K2ugbgwAuFTHWUmIJH45hjsQOnp+T+/
 boSGp9GuG1xETMicl1jy66Rx1Y7bMiEfHsX7f7XhuMay/MCGe9tVO9tIgwffGmV8ql4F
 y1GaJmhl+mH8h074N33Tswgu+rIFq84HvlqXSD5Nu9QH+ame+FB5pou3SbWG7JL3WuW1
 jU1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O4wdXIxuCS34bHJe94XUkjpTpwy8Po+XPWcqbmgQn1w=;
 b=htsrY1hh3xXebXn8bpn1rUQ8aFla7NlQ/hOKS1375WpHCyKRC2Pt/ywhgMgPa+PNlA
 VQmsaVsSX5JI4TK2yqp2ftDllGwSDQUg42HslZHsfORW92yMzoKWh2BvONkrMxjmTxEV
 bF7b7Isahooo0lBebQWRRZsI1B/cWaC/AoLZHSGnz77J11olWoVaKmg2Rk419cw7eB6m
 VgjXamTCVk2DbqDBVeucihx1/XQsn/AKMd0JMFOGvSSjIMssKaXYlpE2FI8JGhszNIYG
 ZObKq/QTdHRM1Te3SntSCZ9yiQxqIFyGYwvpPP51ljbfI8Ncm2Iut6aJgFSUP6hdHl7v
 r7zA==
X-Gm-Message-State: AOAM532c4Ec8G/DT8VyXR+4nBXM5n41Ia5AvsSdKd/zjKDz8cgvAhdJP
 TcMFtGpmN+WZ9NfX6vOri4LyQWQnYuaS5VHbeQw=
X-Google-Smtp-Source: ABdhPJymBoixmZewYsldu+GjioIM1a44wH2QUg+IG98cKlbnnDiuVUhEZV3hY/i99POjB8TNV6eEXUDbqJD559e9tlk=
X-Received: by 2002:adf:ea8a:: with SMTP id s10mr19102399wrm.157.1625002897998; 
 Tue, 29 Jun 2021 14:41:37 -0700 (PDT)
MIME-Version: 1.0
References: <dbb8b1824d1d701ebbd513324232eddafcad835b.1624678815.git.lucien.xin@gmail.com>
 <87pmw7ytw5.fsf@e43.eu>
 <CADvbK_fWLZNMfbs9h0BPgFJPCq0DY-epENTtQsgq=-fC7Zzk0A@mail.gmail.com>
 <CADvbK_ek=-B+QFK3eTZWaNWyckv5+jRt5wsqW4vPhQoNkxcfsw@mail.gmail.com>
 <a83e4014-0298-cf22-0068-cc6d348a37d3@redhat.com>
In-Reply-To: <a83e4014-0298-cf22-0068-cc6d348a37d3@redhat.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Tue, 29 Jun 2021 17:41:27 -0400
Message-ID: <CADvbK_dKHH537JY-LfnOHvpwKWhQ7vyhgqye0P7io-DVYk3r-Q@mail.gmail.com>
To: Jon Maloy <jmaloy@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.50 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: e43.eu]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.50 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lyLUG-003yVs-8r
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
Cc: tipc-discussion@lists.sourceforge.net, Erin Shepherd <erin.shepherd@e43.eu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On Tue, Jun 29, 2021 at 3:57 PM Jon Maloy <jmaloy@redhat.com> wrote:
>
>
> On 28/06/2021 15:16, Xin Long wrote:
> > On Mon, Jun 28, 2021 at 3:03 PM Xin Long <lucien.xin@gmail.com> wrote:
> >> On Sun, Jun 27, 2021 at 3:44 PM Erin Shepherd <erin.shepherd@e43.eu> wrote:
> >>> Xin Long <lucien.xin@gmail.com> writes:
> >>>
> >>>> Currently, when userspace reads a datagram with a buffer that is
> >>>> smaller than this datagram, the data will be truncated and only
> >>>> part of it can be received by users. It doesn't seem right that
> >>>> users don't know the datagram size and have to use a huge buffer
> >>>> to read it to avoid the truncation.
> >>>>
> >>>> This patch to fix it by keeping the skb in rcv queue until the
> >>>> whole data is read by users. Only the last msg of the datagram
> >>>> will be marked with MSG_EOR, just as TCP/SCTP does.
> Makes sense to me.
> >>> I agree that the current behavior is suboptimal, but:
> >>>
> >>>   * Isn't this the same behavior that other datagram socket types
> >>>     exhibit? It seems like this would make TIPC behave inconsistently
> >>>     compared to other transports
> >> Yes, SCTP.
> >> Do you see any reliable datagram transports not doing this?
> >>
> >>>   * Isn't this a compatibility break with existing software? Particularly
> >>>     existing software will not expect to receive trailers of overlong
> >>>     datagrams
> >> I talked to Jon about this, he seems okay with this.
> >>
> >>> It feels like this behavior should be activated either with a
> >>> setsockopt(2) call or a new MSG_* flag passed to recv
> >> Anyway, It may not be worth a new sockopt.
> >> I'm thinking to pass MSG_EOR into sendmsg:
> >>    sendmsg(MSG_EOR).
> > sorry, I meant recvmsg();
>
> Still not sure I understand what you are suggesting here. Do you mean
> that if we add MSG_EOR as a flag  to recvmsg() that means we *don't*
> want the remainder of the message, i.e., it is ok to truncate it?
>
> Or do you mean the opposite?
Yes, Jon, I mean the opposite.

when MSG_EOR is set, we will go with what this patch does,
but to delete MSG_EOR if this is not the last part of the data,
and keep MSG_EOR if this is the last part of the data.

when MSG_EOR is not set, the msg will be truncated as before.

>
> In the first case, we don't solve any compatibility issue, if that is
> the purpose. The programmer still has to add code to get the current
> behavior.
>
> In the latter case we would be on the 100% safe side, although I have a
> real hard time to see that this could be a real issue. Why would anybody
> deliberately design an application for having messages truncated.
>
> ///jon
>
>
> >> to indicate we don't want the truncating msg.
> >>
> >> When the msg flag returns with no MSG_EOR, it means there's more data to read.
> >>
> >> Thanks.
> >>> - Erin
> >>>
> >>>> Signed-off-by: Xin Long <lucien.xin@gmail.com>
> >>>> ---
> >>>>   net/tipc/socket.c | 30 +++++++++++++++++++++---------
> >>>>   1 file changed, 21 insertions(+), 9 deletions(-)
> >>>>
> >>>> diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> >>>> index 34a97ea36cc8..504e59838b8b 100644
> >>>> --- a/net/tipc/socket.c
> >>>> +++ b/net/tipc/socket.c
> >>>> @@ -1880,6 +1880,7 @@ static int tipc_recvmsg(struct socket *sock, struct msghdr *m,
> >>>>        bool connected = !tipc_sk_type_connectionless(sk);
> >>>>        struct tipc_sock *tsk = tipc_sk(sk);
> >>>>        int rc, err, hlen, dlen, copy;
> >>>> +     struct tipc_skb_cb *skb_cb;
> >>>>        struct sk_buff_head xmitq;
> >>>>        struct tipc_msg *hdr;
> >>>>        struct sk_buff *skb;
> >>>> @@ -1903,6 +1904,7 @@ static int tipc_recvmsg(struct socket *sock, struct msghdr *m,
> >>>>                if (unlikely(rc))
> >>>>                        goto exit;
> >>>>                skb = skb_peek(&sk->sk_receive_queue);
> >>>> +             skb_cb = TIPC_SKB_CB(skb);
> >>>>                hdr = buf_msg(skb);
> >>>>                dlen = msg_data_sz(hdr);
> >>>>                hlen = msg_hdr_sz(hdr);
> >>>> @@ -1922,18 +1924,27 @@ static int tipc_recvmsg(struct socket *sock, struct msghdr *m,
> >>>>
> >>>>        /* Capture data if non-error msg, otherwise just set return value */
> >>>>        if (likely(!err)) {
> >>>> -             copy = min_t(int, dlen, buflen);
> >>>> -             if (unlikely(copy != dlen))
> >>>> -                     m->msg_flags |= MSG_TRUNC;
> >>>> -             rc = skb_copy_datagram_msg(skb, hlen, m, copy);
> >>>> +             int offset = skb_cb->bytes_read;
> >>>> +
> >>>> +             copy = min_t(int, dlen - offset, buflen);
> >>>> +             rc = skb_copy_datagram_msg(skb, hlen + offset, m, copy);
> >>>> +             if (unlikely(rc))
> >>>> +                     goto exit;
> >>>> +             if (unlikely(offset + copy < dlen)) {
> >>>> +                     if (!(flags & MSG_PEEK))
> >>>> +                             skb_cb->bytes_read = offset + copy;
> >>>> +             } else {
> >>>> +                     m->msg_flags |= MSG_EOR;
> >>>> +                     skb_cb->bytes_read = 0;
> >>>> +             }
> >>>>        } else {
> >>>>                copy = 0;
> >>>>                rc = 0;
> >>>> -             if (err != TIPC_CONN_SHUTDOWN && connected && !m->msg_control)
> >>>> +             if (err != TIPC_CONN_SHUTDOWN && connected && !m->msg_control) {
> >>>>                        rc = -ECONNRESET;
> >>>> +                     goto exit;
> >>>> +             }
> >>>>        }
> >>>> -     if (unlikely(rc))
> >>>> -             goto exit;
> >>>>
> >>>>        /* Mark message as group event if applicable */
> >>>>        if (unlikely(grp_evt)) {
> >>>> @@ -1956,9 +1967,10 @@ static int tipc_recvmsg(struct socket *sock, struct msghdr *m,
> >>>>                tipc_node_distr_xmit(sock_net(sk), &xmitq);
> >>>>        }
> >>>>
> >>>> -     tsk_advance_rx_queue(sk);
> >>>> +     if (!skb_cb->bytes_read)
> >>>> +             tsk_advance_rx_queue(sk);
> >>>>
> >>>> -     if (likely(!connected))
> >>>> +     if (likely(!connected) || skb_cb->bytes_read)
> >>>>                goto exit;
> >>>>
> >>>>        /* Send connection flow control advertisement when applicable */
> >>>> --
> >>>> 2.27.0
> >>>>
> >>>>
> >>>>
> >>>> _______________________________________________
> >>>> tipc-discussion mailing list
> >>>> tipc-discussion@lists.sourceforge.net
> >>>> https://lists.sourceforge.net/lists/listinfo/tipc-discussion
> >
> > _______________________________________________
> > tipc-discussion mailing list
> > tipc-discussion@lists.sourceforge.net
> > https://lists.sourceforge.net/lists/listinfo/tipc-discussion
> >
>


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
