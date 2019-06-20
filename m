Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0241A4DA8F
	for <lists+tipc-discussion@lfdr.de>; Thu, 20 Jun 2019 21:49:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1he33a-0008Q2-PM; Thu, 20 Jun 2019 19:49:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <erik.hugne@gmail.com>) id 1he33Q-0008Oo-Td
 for tipc-discussion@lists.sourceforge.net; Thu, 20 Jun 2019 19:49:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b5RMWedCQRoYlPfrrcqWzJN4eg3deEZ48+fBU/cTODU=; b=LGgQkExnztySelSoLcNPAQ5qBr
 oimWR4AqDHjvHZzw8foHCUrQL7Kd3dJJ6Md2umlfFgwBz/o70fohDdx97+70PWDEb1LtPqCEIg7WG
 EP++42TsVESWK4BrpeVpiwQg/yd97YLLiiswAAELLC6jlmYv4nBDsUfSjnQldLS+mZt0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=b5RMWedCQRoYlPfrrcqWzJN4eg3deEZ48+fBU/cTODU=; b=mLuAd6xr8a5gvO8jVauZTGjqhP
 UamjYOAaCpjES5MmJ6hNQpHB72P4w3yrxeWVuZnFAseKiIouLewoxDPUYP1ywcvF15vr6c7ah4v2d
 4LYK/xSz5eOuklzofZKVVuqI0/mCnSQfLgOXw/ELsssTg2j9qiO/W7FEF4cizRzv18HY=;
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1he33R-006U7e-LR
 for tipc-discussion@lists.sourceforge.net; Thu, 20 Jun 2019 19:49:07 +0000
Received: by mail-wm1-f66.google.com with SMTP id h19so7605394wme.0
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 20 Jun 2019 12:49:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=b5RMWedCQRoYlPfrrcqWzJN4eg3deEZ48+fBU/cTODU=;
 b=rPnrJzf8uCxqeKNFQwJ1tU1UDq826+Bo+6GzfsO9/MgKxYzuIaSrb/j1tyrURVBQtP
 PvHbEKGXhH4xBPIJn8WtYD57ToeEqhZwTxVX724wmn2EJ3Ml3j67E/HERqGyPFr08iIg
 jtUSYxb8JI0KVX6AQDrL9tCp5FKEpIpDfr8MqH8tIz/VsSp5E4TyT1i781Kq2LFgaeq5
 XeAp3DPe9VbkoFFH20lis/zd4vjtKifhSkIoGsuZIyswXaKl49COXYxiVY9eIYCXhLae
 ZzSecZ6JAv5Zd91u4T6LrwJC90koK3BNBqtubDsGzH8Uu67e2EnRFwzaScighMlUgrJE
 nahg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b5RMWedCQRoYlPfrrcqWzJN4eg3deEZ48+fBU/cTODU=;
 b=KAGBxvy2yMTcXJgnVSX7i3oHjCJg/P/VjWyWAy6EtFO9+jWvoAiRnYmT8QE0R95C1O
 1Xabn1A9yjXLDKoXwxXRBo6mHiJb/NuYYnl4jAsCqwbA7hAnZQ5VtzxDJaA1Nbw5jFXl
 ZmImERMy3/8DRKRPCmX5DuhCIX8T0zfbazS9i631Sm9kordfEULDTqZi8b7N6vMnjL0x
 Efw1kvTzCqhIFGKEDajHBm1lFr2/lUUG2TCoUXMLfeEIpvkdINMuf4jjIpkgfsz6+eD5
 2MQEQxCW0W3eG/zqaIU9v+3GarEXaqRjjbuUo5uFOwpYoVnomqY/wX6/9LdVsNwp7pJZ
 Raxw==
X-Gm-Message-State: APjAAAXPRkrIBIXgybXI/TISreyxu49H2dOjCeyejqYFrKDX+9MJveHH
 hFG4U35aM+U0U79lrsOBrfmsPPRSeU2FiP15S2w=
X-Google-Smtp-Source: APXvYqxhd9/9DsXFv9wDvXcsgi/GdTs+E2QWE2j/IrJohCIE8GTb0G6p5nlIlyCNzg4YJ4XafaaBhUQh7YkCi1t3yCc=
X-Received: by 2002:a1c:2c41:: with SMTP id s62mr797286wms.8.1561060139012;
 Thu, 20 Jun 2019 12:48:59 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1560778340.git.lucien.xin@gmail.com>
 <CH2PR15MB3575BBA6196E4ACFA6C42BA49AEB0@CH2PR15MB3575.namprd15.prod.outlook.com>
 <CADvbK_eGiYrRCVYxnVnWxHByHCqScEHJ+uKY6jfNBbUM6k7x3g@mail.gmail.com>
In-Reply-To: <CADvbK_eGiYrRCVYxnVnWxHByHCqScEHJ+uKY6jfNBbUM6k7x3g@mail.gmail.com>
From: Erik Hugne <erik.hugne@gmail.com>
Date: Thu, 20 Jun 2019 21:48:49 +0200
Message-ID: <CAMXR+-SLN=ABntuNC8ZUrmnpbYwVV6mxfmwmN_0oG77yasKvzA@mail.gmail.com>
To: Xin Long <lucien.xin@gmail.com>
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (erik.hugne[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: bootlin.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1he33R-006U7e-LR
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
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

Commenting on Jon's response fist.

Den tors 20 juni 2019 kl 13:26 skrev Xin Long <lucien.xin@gmail.com>:
>
> On Mon, Jun 17, 2019 at 10:28 PM Jon Maloy <jon.maloy@ericsson.com> wrote:
> > Hi Xin,
> > As I remember the discussion around introduction of UDP media a few
years ago, the developer, Erik Huge, only chose to register TIPC as a udp
tunnel user instead of regular udp user because it provides a more
efficient way to receive packet in kernel space.
> >With UDP tunnel, we could receive packet directly in a callback, while
TIPC had to run in a work queue thread in order to read packets from the
socket.
The performance was largely dependant on TIPC message size, for large
packets there was no measurable difference, but the tunnel approach was
considerably faster for small packets than the kernel socket interface.
I dont have the numbers, but i think i posted them on this list around 8
years ago.

>[...]
> To implement this gso callback, we need to require an ipproto number for
TIPC,
> and register the callback into inet_offloads by inet_add_offload().
> And on tx path set:
> skb->encapsulation = 1,
> skb_shinfo(skb)->gso_type|= SKB_GSO_UDP_TUNNEL,
> skb->inner_protocol_type = ENCAP_TYPE_IPPROTO.
>
> Then it will be called by:
> dev_queue_xmit() .. -> skb_mac_gso_segment() ... ->
> udp4_ufo_fragment() -> skb_udp_tunnel_segment() ->
> skb_udp_tunnel_segment() -> tipc_gso_fragment()
>
> btw, do we have an official ipproto number for TIPC already?

Not afak, but we have an IANA assigned UDP port for TIPC though, 6118.
https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml?search=tipc

TIPC does:
        skb_set_inner_protocol
<https://elixir.bootlin.com/linux/v5.2-rc5/ident/skb_set_inner_protocol>(skb
, htons <https://elixir.bootlin.com/linux/v5.2-rc5/ident/htons>(ETH_P_TIPC
<https://elixir.bootlin.com/linux/v5.2-rc5/ident/ETH_P_TIPC>));
which will in turn set skb_inner_protocol_type to ENCAP_TYPE_ETHER.
So how about implementing something similar to what's done for
ENCAP_TYPE_IPPROTO, but for ENCAP_TYPE_ETHER?

In udp_offload.c, something in the line of:

...
skb_udp_tunnel_segment(....)
....

switch (skb->inner_protocol_type) {
    case ENCAP_TYPE_ETHER:
        protocol = skb->inner_protocol;
        ops = rcu_dereference(ether_offloads[protocol]);
        if (!ops || !ops->callbacks->gso_segment)
            goto out_unlock;
        gso_inner_segment = ops->callbacks.gso_segment;
    break;

....
And obviously define ether_offloads, and corresponding ether_add_protocol
and ether_add_offload functions.

//E

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
