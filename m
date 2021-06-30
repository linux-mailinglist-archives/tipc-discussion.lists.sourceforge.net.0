Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B8A3B8674
	for <lists+tipc-discussion@lfdr.de>; Wed, 30 Jun 2021 17:45:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lycOq-0002Xi-Rw; Wed, 30 Jun 2021 15:45:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1lycOp-0002Xb-W2
 for tipc-discussion@lists.sourceforge.net; Wed, 30 Jun 2021 15:45:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dIoYYtNASEHYCd8XRyM3DVGsIOji6ShXRiKVUUVhktQ=; b=Sd0FvyvMc+kXvxCwCdGaHMhYfZ
 soqBsZftSqPoOjzVafwyg0R4eFsXIj60mknwBzwARnG1RbWSzbooexdamjDqz9YdZuiq00XL4krtE
 gLA4Mv5wqCKDKyLywANmhuEUgoffFfx0q81pDXnY2fXOcuy7Qb03YVk/X4AlKUh7on5I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dIoYYtNASEHYCd8XRyM3DVGsIOji6ShXRiKVUUVhktQ=; b=cyRj2nV/LnQNCNRvmcr7rozRzU
 WX3WiOjuV8j8/dvyQy7qym43bFS0b063V3MQ9+3x7LD4IGCXe8IdGHCVSF37pJ0mt/WtfKDLNcZTM
 H6q0yGjdPG92GEomUZ/3RJ44lZ6dWIBz4K6jeX8V3yHL8dfdGbIiOBLLnYWDzIopja6Y=;
Received: from mail-wr1-f46.google.com ([209.85.221.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lycOl-004ss7-AE
 for tipc-discussion@lists.sourceforge.net; Wed, 30 Jun 2021 15:45:15 +0000
Received: by mail-wr1-f46.google.com with SMTP id g7so4207985wri.7
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 30 Jun 2021 08:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dIoYYtNASEHYCd8XRyM3DVGsIOji6ShXRiKVUUVhktQ=;
 b=qLjWoy/Ilt4NTCLl0eZf+Ws7kWdv4dIxRfuUA8AnAmVXxd2wKGCWQ+SbhegAW12E8D
 vENv/PPFzkvTVRh/kmZNqYS4/O1GljMQzfYtiGwNag4lNvje/owI4ERKWozumjwV9X1A
 K+zUqCS4NREaAUpaLlodnroCDAI1fuc1gNfkQfaFkBFFR+Ti43dFAuQX5oZrNBcy7jxB
 zkFhVLVuAN1K8GE+koSPdrdznAf8Xw/vF2/XZWmbGWnkKum76JTzohAWBCOSjzCqmNb+
 MYEpft4HRTr5TAPOvlpmBqFY9SQWXHBMJru20nTxL7mhJjGwtLokegxqybMBlu1Ge+S5
 gqbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dIoYYtNASEHYCd8XRyM3DVGsIOji6ShXRiKVUUVhktQ=;
 b=uXKVuJohUSYzxmfKSwKIGZieHCqjv9LfxyyB7bc+36nO4pk/0CDKcCGcz42ivjCxWd
 Xz6jBC7ljUy8d/c58yvZNUQOmvEPEigHxZgPNDRiE+pPENlsKRXfPgQSWWYc6Balk5K0
 x2h9j3Gm6ZScMydZ7dKHZgWeWmibEh6kGqbUc+66s1QL1aHwDvCTG0zGy9t9Y4dLMK3T
 W/TL9gHyAslN+eqshyvkMkqv3AzMlMH4Hefcq3GjqGczS0O6/Ngn3OrUPuBCC7n9Z+9F
 zsnNv1TQhd3ph3IXfj+Vsh8er+ykPbYiuWepYe11cQtAWCLB7vc7L5FYY0QgTC3/SJQE
 wR3g==
X-Gm-Message-State: AOAM530Cy0TTA3Jp3olHTYqAL7kiCNjaWzWP8SVlVH3eK5dczp0jjTLQ
 BpT63grhHF6HwDQ26BRTwzsTSdr0NTriTers5M8=
X-Google-Smtp-Source: ABdhPJxhysbnm3YJEakZyhzSuN6FgRgZIOzPKpWQ31KmMQHDSk7GoLGdPTz2x4bLDIcM5CkB8hu4LQRBqicJZVVP0Xk=
X-Received: by 2002:adf:ea8a:: with SMTP id s10mr23697453wrm.157.1625067904868; 
 Wed, 30 Jun 2021 08:45:04 -0700 (PDT)
MIME-Version: 1.0
References: <dbb8b1824d1d701ebbd513324232eddafcad835b.1624678815.git.lucien.xin@gmail.com>
 <87pmw7ytw5.fsf@e43.eu>
 <CADvbK_fWLZNMfbs9h0BPgFJPCq0DY-epENTtQsgq=-fC7Zzk0A@mail.gmail.com>
 <CADvbK_ek=-B+QFK3eTZWaNWyckv5+jRt5wsqW4vPhQoNkxcfsw@mail.gmail.com>
 <a83e4014-0298-cf22-0068-cc6d348a37d3@redhat.com>
 <CADvbK_dKHH537JY-LfnOHvpwKWhQ7vyhgqye0P7io-DVYk3r-Q@mail.gmail.com>
 <9f0510f1-c7c2-adf8-5d9c-e119f48c1a05@redhat.com>
In-Reply-To: <9f0510f1-c7c2-adf8-5d9c-e119f48c1a05@redhat.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Wed, 30 Jun 2021 11:44:54 -0400
Message-ID: <CADvbK_e+yirLRtK4pzmG_5HvJHSVEpnZiDZO34G2mLaw-Pw5hQ@mail.gmail.com>
To: Jon Maloy <jmaloy@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.46 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.46 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lycOl-004ss7-AE
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

On Wed, Jun 30, 2021 at 10:33 AM Jon Maloy <jmaloy@redhat.com> wrote:
>
>
> On 29/06/2021 17:41, Xin Long wrote:
> > On Tue, Jun 29, 2021 at 3:57 PM Jon Maloy <jmaloy@redhat.com> wrote:
> >>
> [...]
> > Yes, Jon, I mean the opposite.
> >
> > when MSG_EOR is set, we will go with what this patch does,
> > but to delete MSG_EOR if this is not the last part of the data,
> > and keep MSG_EOR if this is the last part of the data.
> >
> > when MSG_EOR is not set, the msg will be truncated as before.
>
> Yes, that would be a safe behavior. Is SCTP doing this?
No, SCTP doesn't need to, as it doesn't truncate msg since the beginning.
That's why no compatibility issue was caused.

>
> ///jon
>
> >
> >> In the first case, we don't solve any compatibility issue, if that is
> >> the purpose. The programmer still has to add code to get the current
> >> behavior.
> >>
> >> In the latter case we would be on the 100% safe side, although I have a
> >> real hard time to see that this could be a real issue. Why would anybody
> >> deliberately design an application for having messages truncated.
> >>
> >> ///jon
> >>
> >>
> >>>> to indicate we don't want the truncating msg.
> >>>>
> >>>> When the msg flag returns with no MSG_EOR, it means there's more data to read.
> >>>>
> >>>> Thanks.
> >>>>> - Erin
> >>>>>
> >>>>>> Signed-off-by: Xin Long <lucien.xin@gmail.com>
> >>>>>> ---
> >>>>>>    net/tipc/socket.c | 30 +++++++++++++++++++++---------
> >>>>>>    1 file changed, 21 insertions(+), 9 deletions(-)
> >>>>>>
> >>>>>> diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> >>>>>> index 34a97ea36cc8..504e59838b8b 100644
> >>>>>> --- a/net/tipc/socket.c
> >>>>>> +++ b/net/tipc/socket.c
> >>>>>> @@ -1880,6 +1880,7 @@ static int tipc_recvmsg(struct socket *sock, struct msghdr *m,
> >>>>>>         bool connected = !tipc_sk_type_connectionless(sk);
> >>>>>>         struct tipc_sock *tsk = tipc_sk(sk);
> >>>>>>         int rc, err, hlen, dlen, copy;
> >>>>>> +     struct tipc_skb_cb *skb_cb;
> >>>>>>         struct sk_buff_head xmitq;
> >>>>>>         struct tipc_msg *hdr;
> >>>>>>         struct sk_buff *skb;
> >>>>>> @@ -1903,6 +1904,7 @@ static int tipc_recvmsg(struct socket *sock, struct msghdr *m,
> >>>>>>                 if (unlikely(rc))
> >>>>>>                         goto exit;
> >>>>>>                 skb = skb_peek(&sk->sk_receive_queue);
> >>>>>> +             skb_cb = TIPC_SKB_CB(skb);
> >>>>>>                 hdr = buf_msg(skb);
> >>>>>>                 dlen = msg_data_sz(hdr);
> >>>>>>                 hlen = msg_hdr_sz(hdr);
> >>>>>> @@ -1922,18 +1924,27 @@ static int tipc_recvmsg(struct socket *sock, struct msghdr *m,
> >>>>>>
> >>>>>>         /* Capture data if non-error msg, otherwise just set return value */
> >>>>>>         if (likely(!err)) {
> >>>>>> -             copy = min_t(int, dlen, buflen);
> >>>>>> -             if (unlikely(copy != dlen))
> >>>>>> -                     m->msg_flags |= MSG_TRUNC;
> >>>>>> -             rc = skb_copy_datagram_msg(skb, hlen, m, copy);
> >>>>>> +             int offset = skb_cb->bytes_read;
> >>>>>> +
> >>>>>> +             copy = min_t(int, dlen - offset, buflen);
> >>>>>> +             rc = skb_copy_datagram_msg(skb, hlen + offset, m, copy);
> >>>>>> +             if (unlikely(rc))
> >>>>>> +                     goto exit;
> >>>>>> +             if (unlikely(offset + copy < dlen)) {
> >>>>>> +                     if (!(flags & MSG_PEEK))
> >>>>>> +                             skb_cb->bytes_read = offset + copy;
> >>>>>> +             } else {
> >>>>>> +                     m->msg_flags |= MSG_EOR;
> >>>>>> +                     skb_cb->bytes_read = 0;
> >>>>>> +             }
> >>>>>>         } else {
> >>>>>>                 copy = 0;
> >>>>>>                 rc = 0;
> >>>>>> -             if (err != TIPC_CONN_SHUTDOWN && connected && !m->msg_control)
> >>>>>> +             if (err != TIPC_CONN_SHUTDOWN && connected && !m->msg_control) {
> >>>>>>                         rc = -ECONNRESET;
> >>>>>> +                     goto exit;
> >>>>>> +             }
> >>>>>>         }
> >>>>>> -     if (unlikely(rc))
> >>>>>> -             goto exit;
> >>>>>>
> >>>>>>         /* Mark message as group event if applicable */
> >>>>>>         if (unlikely(grp_evt)) {
> >>>>>> @@ -1956,9 +1967,10 @@ static int tipc_recvmsg(struct socket *sock, struct msghdr *m,
> >>>>>>                 tipc_node_distr_xmit(sock_net(sk), &xmitq);
> >>>>>>         }
> >>>>>>
> >>>>>> -     tsk_advance_rx_queue(sk);
> >>>>>> +     if (!skb_cb->bytes_read)
> >>>>>> +             tsk_advance_rx_queue(sk);
> >>>>>>
> >>>>>> -     if (likely(!connected))
> >>>>>> +     if (likely(!connected) || skb_cb->bytes_read)
> >>>>>>                 goto exit;
> >>>>>>
> >>>>>>         /* Send connection flow control advertisement when applicable */
> >>>>>> --
> >>>>>> 2.27.0
> >>>>>>
> >>>>>>
> >>>>>>
> >>>>>> _______________________________________________
> >>>>>> tipc-discussion mailing list
> >>>>>> tipc-discussion@lists.sourceforge.net
> >>>>>> https://lists.sourceforge.net/lists/listinfo/tipc-discussion
> >>> _______________________________________________
> >>> tipc-discussion mailing list
> >>> tipc-discussion@lists.sourceforge.net
> >>> https://lists.sourceforge.net/lists/listinfo/tipc-discussion
> >>>
>


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
