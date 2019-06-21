Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF5F4E116
	for <lists+tipc-discussion@lfdr.de>; Fri, 21 Jun 2019 09:21:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1heDqx-0005SQ-Nc; Fri, 21 Jun 2019 07:20:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1heDqx-0005SF-16
 for tipc-discussion@lists.sourceforge.net; Fri, 21 Jun 2019 07:20:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3HoMfvFytDfBnUeUncfDQdMmgHAbKVJ9LuLY77HmjdM=; b=T1EppvfDQcaEzdlBIqTFIvuH4Z
 dQIx/mZP0YMmjBEycw7dBC0z79VvbMq41a1l/pB0ehALO7geIsys1I9XG+qK+QYMPC0ZZzVBJFDrA
 PjDV0YqBn8LY+3EhdK5saq6jgFFkasPCSwhngHIN4NBU3ZjU/DJ9DND9SPQPJUClOxt4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3HoMfvFytDfBnUeUncfDQdMmgHAbKVJ9LuLY77HmjdM=; b=f7PIO94MT2pFwT+kq5vBIG4fVG
 bWhtAG1JcuR0eemqJPqDB8u4iS3PD2SGO/u/AwZ96EXERjnSji2JlSMYny+O2OLwZRcbZPTni/xMK
 Ej5G58xTGVdMiGYhsAw68UtPYkWoEFzlsqklfi5z1RNO5a4hljQaQltbTq55DmGD2ZlU=;
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1heDqy-002Vr2-KH
 for tipc-discussion@lists.sourceforge.net; Fri, 21 Jun 2019 07:20:58 +0000
Received: by mail-wr1-f66.google.com with SMTP id k11so5495364wrl.1
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 21 Jun 2019 00:20:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3HoMfvFytDfBnUeUncfDQdMmgHAbKVJ9LuLY77HmjdM=;
 b=ebBp15jUsZoigMYNC8PoAbJps4zEDYdgARN1ObLiXVKrRS91zfHQ/n3F1qRBrQ1+Ua
 YdNgQ6bOaC+tEmOD8aDw+ltB203RiDGwkoyHLVFKx3P1hD7tVeCn+2x1MNRh1+jASbNN
 Hop3PNJf0wEqp0mZqSLP2D/4YqOMbxa7eqMKWt5q6Mpjg/gFhLCDBOqFAfZWCIJM2oSh
 3Zac+0yb2UOLJsEUG9heukp7PayJm5xLgojpGkPQERjiRmwdJMj5z48BgcCnSbyQuG4+
 jNTCETRdlYrGVB3oJsK1ugl7BTgAhm7M2hJIwzJnAGvux/yUY3jun73M/LrUzsiIWBKB
 FkKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3HoMfvFytDfBnUeUncfDQdMmgHAbKVJ9LuLY77HmjdM=;
 b=s17kbJ0LqGptHP5ou2ZM7fiEmmqauLliJI4SqFI+CdSpbeGY6vFiH0fEVINuk/5R67
 oUz0UqOuDmlXrqUuABVyGWq5rU/6UPsH5TEBzNq0SS8gxK4H/AcH63n04WiNbVE3fzBc
 tzP/udJy7U1KXn3CJlH+iyEdaB/2TSU9BEz9awSTDmq6pa9KqlA5btQgHx5JCjF0VsaC
 +hxwMsRLMnB32WSXLGEDmEE5lm9ec9aDRI1u558BaBFRMk4i7mTvW7IoD3PYB182K+3Q
 F+sJi8XKoi0oXAlaA/mS8Bm2CRzTcVTNdEhK2CSL4XZtSMkEBx7pqgzmaBuQ5G4PHlEk
 6nBQ==
X-Gm-Message-State: APjAAAV1Wcz+amX288zP1GvLocS0S2sz/icMIQZUOErDGpX1nfjy4rnp
 N3kBRpIyGy+g98VlPEjlFBf5gc30U+ddQlg0RUs=
X-Google-Smtp-Source: APXvYqxkQQgrWvOQ0nVjz4BYHMe+39fKIyUUPyB4b8fLXIeTtTfptQPzrcVXt44vSRs+WL+mk1wBeVV8Fcg6Y2nT1Bw=
X-Received: by 2002:a5d:4fc8:: with SMTP id h8mr7312256wrw.124.1561101650082; 
 Fri, 21 Jun 2019 00:20:50 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1560778340.git.lucien.xin@gmail.com>
 <CH2PR15MB3575BBA6196E4ACFA6C42BA49AEB0@CH2PR15MB3575.namprd15.prod.outlook.com>
 <CADvbK_eGiYrRCVYxnVnWxHByHCqScEHJ+uKY6jfNBbUM6k7x3g@mail.gmail.com>
 <CAMXR+-SLN=ABntuNC8ZUrmnpbYwVV6mxfmwmN_0oG77yasKvzA@mail.gmail.com>
In-Reply-To: <CAMXR+-SLN=ABntuNC8ZUrmnpbYwVV6mxfmwmN_0oG77yasKvzA@mail.gmail.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Fri, 21 Jun 2019 15:20:38 +0800
Message-ID: <CADvbK_f+L131bduHOJiGd5OMNBd2Wb2OR-mp1kfMuAb-WsOSUw@mail.gmail.com>
To: Erik Hugne <erik.hugne@gmail.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1heDqy-002Vr2-KH
Subject: Re: [tipc-discussion] [PATCH net 0/3] net: fix quite a few
 dst_cache crashes reported by syzbot
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
 <tipc-discussion@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On Fri, Jun 21, 2019 at 3:48 AM Erik Hugne <erik.hugne@gmail.com> wrote:
>
> Commenting on Jon's response fist.
>
> Den tors 20 juni 2019 kl 13:26 skrev Xin Long <lucien.xin@gmail.com>:
> >
> > On Mon, Jun 17, 2019 at 10:28 PM Jon Maloy <jon.maloy@ericsson.com> wrote:
> > > Hi Xin,
> > > As I remember the discussion around introduction of UDP media a few years ago, the developer, Erik Huge, only chose to register TIPC as a udp tunnel user instead of regular udp user because it provides a more efficient way to receive packet in kernel space.
> > >With UDP tunnel, we could receive packet directly in a callback, while TIPC had to run in a work queue thread in order to read packets from the socket.
> The performance was largely dependant on TIPC message size, for large packets there was no measurable difference, but the tunnel approach was considerably faster for small packets than the kernel socket interface.
> I dont have the numbers, but i think i posted them on this list around 8 years ago.
>
> >[...]
> > To implement this gso callback, we need to require an ipproto number for TIPC,
> > and register the callback into inet_offloads by inet_add_offload().
> > And on tx path set:
> > skb->encapsulation = 1,
> > skb_shinfo(skb)->gso_type|= SKB_GSO_UDP_TUNNEL,
> > skb->inner_protocol_type = ENCAP_TYPE_IPPROTO.
> >
> > Then it will be called by:
> > dev_queue_xmit() .. -> skb_mac_gso_segment() ... ->
> > udp4_ufo_fragment() -> skb_udp_tunnel_segment() ->
> > skb_udp_tunnel_segment() -> tipc_gso_fragment()
> >
> > btw, do we have an official ipproto number for TIPC already?
>
> Not afak, but we have an IANA assigned UDP port for TIPC though, 6118.
> https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml?search=tipc
>
> TIPC does:
>         skb_set_inner_protocol(skb, htons(ETH_P_TIPC));
> which will in turn set skb_inner_protocol_type to ENCAP_TYPE_ETHER.
> So how about implementing something similar to what's done for ENCAP_TYPE_IPPROTO, but for ENCAP_TYPE_ETHER?
>
> In udp_offload.c, something in the line of:
>
> ...
> skb_udp_tunnel_segment(....)
> ....
>
> switch (skb->inner_protocol_type) {
>     case ENCAP_TYPE_ETHER:
>         protocol = skb->inner_protocol;
>         ops = rcu_dereference(ether_offloads[protocol]);
>         if (!ops || !ops->callbacks->gso_segment)
>             goto out_unlock;
>         gso_inner_segment = ops->callbacks.gso_segment;
>     break;
>
> ....
> And obviously define ether_offloads, and corresponding ether_add_protocol and ether_add_offload functions.
>
Maybe no need ether_offloads, dev_add_offload(&tipc_packet_offload) is
enough to make the callback be called by skb_mac_gso_segment() from
skb_udp_tunnel_segment(), I believe that's also what Jon does now.

It depends on which layer protocol we think TIPC. If we don't have a
plan for TIPC working over IP, a transport protocol in the future,
packet_offload is fine, otherwise, inet_offloads is also an option.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
