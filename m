Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C363B81B1
	for <lists+tipc-discussion@lfdr.de>; Wed, 30 Jun 2021 14:09:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lyZ1e-00044B-9W; Wed, 30 Jun 2021 12:09:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1lyZ1c-00043p-W2
 for tipc-discussion@lists.sourceforge.net; Wed, 30 Jun 2021 12:09:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nOYX1KBLBzYSn2dqaIa2EmyKdZfZTM5ZUlR4XZwi4zU=; b=X4P5aMn5ks1RL7SSDv1VqdpqbV
 +yxj6CPGEoXAqeH6DCUt7J+NNq99Hq0oYePLf9vzFT17TKVvoa502QWi227n0VtvZRFWG698BlmpE
 F2aPZpFULsQUegXeTBGBhtBuBSE7qWBQ3xEmySAdaZHay77aXPyPprVHkQVgFGPin+ic=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nOYX1KBLBzYSn2dqaIa2EmyKdZfZTM5ZUlR4XZwi4zU=; b=lc8fXn+AKL/pSPhyrT1S4OC2+A
 Ps+72F6pXT81rzMbUuUP4QbPQyEzDPeBxXqhKGMWw+KgqU8er1lzBuM3GYaYreaR5upBWix98AMUD
 9VpxjdFFVnp/LVUX+L1KXjpLZF8TYhRcdjoxUTE2SaoZ5S8d2xMVQulE8XEiJWer6XyY=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lyZ1V-004gHX-U9
 for tipc-discussion@lists.sourceforge.net; Wed, 30 Jun 2021 12:09:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1625054931;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nOYX1KBLBzYSn2dqaIa2EmyKdZfZTM5ZUlR4XZwi4zU=;
 b=YBPUC9nHUz+9KWm2lPgqxI8GzI4BRK+nwienLkP6vjCHsvlAY5JrxLS+qUBdqYYC1QUavX
 QF84fPRacxdVhjgYrFvoq87jEy9xlNQ06eQG48A5wZ34K79Pmqfa3/Nk95uFXiYXMQ0yqV
 OZ1a5/vpJMou4PH1lqKdK8sz/9zkrBE=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-108-CYoxU2hrOmS3yPt4B5U1sw-1; Wed, 30 Jun 2021 08:08:48 -0400
X-MC-Unique: CYoxU2hrOmS3yPt4B5U1sw-1
Received: by mail-qv1-f72.google.com with SMTP id
 eb2-20020ad44e420000b029025a58adfc6bso1261247qvb.9
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 30 Jun 2021 05:08:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=nOYX1KBLBzYSn2dqaIa2EmyKdZfZTM5ZUlR4XZwi4zU=;
 b=TAnWnpp3XH/hQI8roZXM8SYEk1iNi0uNiINs/w93BwdURsszZZxSop+rfM1PykDdTF
 /9soitV9+8pbF+HPQi+N0HFNhcurLswMlT+EaXomWRSQaKqfHavXANuRBBrjK4fBABqL
 YmJ5GciyZ0qzP9jBeCJ9By1Jo5G9+IqRInlNQRx0INESMJa+KU6U1r/2wA9qQvK9t360
 6PXgk/ldaZ3gNSAepmcyibZDp4CcZjBsZoiRWI7xREdyayGW9TGxn3dzsJWrbZxjsq/F
 y9DfxLcoW05+lB+XJ98DqbCKYGosxa8g7MqaakbSR9s55NHOclEisHZn/zXft2pt203E
 FWyg==
X-Gm-Message-State: AOAM530zpooBPtNZ12KWXJNzcWMWKozuaicOFh+VOFJXxLzzQiRnvyvI
 4KcODTWatmyelPTPuA4P0kdC5WPOF080TVekEDpgp5RjIang+fDgy5FhuyqtuO1A9AY4u/PqSpy
 4SFGqGBFu0x2mJaichqwVJrGXCVHWqrFONj5E
X-Received: by 2002:a05:6214:b0d:: with SMTP id
 u13mr36427769qvj.55.1625054928478; 
 Wed, 30 Jun 2021 05:08:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy/OlM5h3X5aqKD7Zukbbs7jjU918kmXOvjggJQ12avYNJtOWx9Yl0S0+LANma+ALgrClKhKA==
X-Received: by 2002:a05:6214:b0d:: with SMTP id
 u13mr36427740qvj.55.1625054928193; 
 Wed, 30 Jun 2021 05:08:48 -0700 (PDT)
Received: from [192.168.0.104] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id o200sm11225522qke.105.2021.06.30.05.08.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 30 Jun 2021 05:08:47 -0700 (PDT)
To: Xin Long <lucien.xin@gmail.com>, tipc-discussion@lists.sourceforge.net
References: <409805d797d6eafe4bf91d96b3c579844cf753c8.1623447215.git.lucien.xin@gmail.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <ce527a9d-0695-9504-3e40-8a38d8c5e5a4@redhat.com>
Date: Wed, 30 Jun 2021 08:08:46 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <409805d797d6eafe4bf91d96b3c579844cf753c8.1623447215.git.lucien.xin@gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: tipc.io]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: tipc.io]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: tipc.io]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lyZ1V-004gHX-U9
Subject: Re: [tipc-discussion] [PATCH net] Documentation: add more details
 in tipc.rst
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net


On 11/06/2021 17:33, Xin Long wrote:
> kernel-doc for TIPC is too simple, we need to add more information for it.
>
> This patch is to extend the abstract, and add the Features and Links items.
>
> Signed-off-by: Xin Long <lucien.xin@gmail.com>
Acked-by: Jon Maloy <jmaloy@redhat.com>
> ---
>   Documentation/networking/tipc.rst | 121 +++++++++++++++++++++++++++++-
>   1 file changed, 118 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/networking/tipc.rst b/Documentation/networking/tipc.rst
> index 76775f24cdc8..ab63d298cca2 100644
> --- a/Documentation/networking/tipc.rst
> +++ b/Documentation/networking/tipc.rst
> @@ -4,10 +4,125 @@
>   Linux Kernel TIPC
>   =================
>   
> -TIPC (Transparent Inter Process Communication) is a protocol that is
> -specially designed for intra-cluster communication.
> +Introduction
> +============
>   
> -For more information about TIPC, see http://tipc.sourceforge.net.
> +TIPC (Transparent Inter Process Communication) is a protocol that is specially
> +designed for intra-cluster communication. It can be configured to transmit
> +messages either on UDP or directly across Ethernet. Message delivery is
> +sequence guaranteed, loss free and flow controlled. Latency times are shorter
> +than with any other known protocol, while maximal throughput is comparable to
> +that of TCP.
> +
> +TIPC Features
> +-------------
> +
> +- Cluster wide IPC service
> +
> +  Have you ever wished you had the convenience of Unix Domain Sockets even when
> +  transmitting data between cluster nodes? Where you yourself determine the
> +  addresses you want to bind to and use? Where you don't have to perform DNS
> +  lookups and worry about IP addresses? Where you don't have to start timers
> +  to monitor the continuous existence of peer sockets? And yet without the
> +  downsides of that socket type, such as the risk of lingering inodes?
> +
> +  Welcome to the Transparent Inter Process Communication service, TIPC in short,
> +  which gives you all of this, and a lot more.
> +
> +- Service Addressing
> +
> +  A fundamental concept in TIPC is that of Service Addressing which makes it
> +  possible for a programmer to chose his own address, bind it to a server
> +  socket and let client programs use only that address for sending messages.
> +
> +- Service Tracking
> +
> +  A client wanting to wait for the availability of a server, uses the Service
> +  Tracking mechanism to subscribe for binding and unbinding/close events for
> +  sockets with the associated service address.
> +
> +  The service tracking mechanism can also be used for Cluster Topology Tracking,
> +  i.e., subscribing for availability/non-availability of cluster nodes.
> +
> +  Likewise, the service tracking mechanism can be used for Cluster Connectivity
> +  Tracking, i.e., subscribing for up/down events for individual links between
> +  cluster nodes.
> +
> +- Transmission Modes
> +
> +  Using a service address, a client can send datagram messages to a server socket.
> +
> +  Using the same address type, it can establish a connection towards an accepting
> +  server socket.
> +
> +  It can also use a service address to create and join a Communication Group,
> +  which is the TIPC manifestation of a brokerless message bus.
> +
> +  Multicast with very good performance and scalability is available both in
> +  datagram mode and in communication group mode.
> +
> +- Inter Node Links
> +
> +  Communication between any two nodes in a cluster is maintained by one or two
> +  Inter Node Links, which both guarantee data traffic integrity and monitor
> +  the peer node's availability.
> +
> +- Cluster Scalability
> +
> +  By applying the Overlapping Ring Monitoring algorithm on the inter node links
> +  it is possible to scale TIPC clusters up to 1000 nodes with a maintained
> +  neighbor failure discovery time of 1-2 seconds. For smaller clusters this
> +  time can be made much shorter.
> +
> +- Neighbor Discovery
> +
> +  Neighbor Node Discovery in the cluster is done by Ethernet broadcast or UDP
> +  multicast, when any of those services are available. If not, configured peer
> +  IP addresses can be used.
> +
> +- Configuration
> +
> +  When running TIPC in single node mode no configuration whatsoever is needed.
> +  When running in cluster mode TIPC must as a minimum be given a node address
> +  (before Linux 4.17) and told which interface to attach to. The "tipc"
> +  configuration tool makes is possible to add and maintain many more
> +  configuration parameters.
> +
> +- Performance
> +
> +  TIPC message transfer latency times are better than in any other known protocol.
> +  Maximal byte throughput for inter-node connections is still somewhat lower than
> +  for TCP, while they are superior for intra-node and inter-container throughput
> +  on the same host.
> +
> +- Language Support
> +
> +  The TIPC user API has support for C, Python, Perl, Ruby, D and Go.
> +
> +More Information
> +----------------
> +
> +- How to set up TIPC:
> +
> +  http://tipc.io/getting_started.html
> +
> +- How to program with TIPC:
> +
> +  http://tipc.io/programming.html
> +
> +- How to contribute to TIPC:
> +
> +- http://tipc.io/contacts.html
> +
> +- More details about TIPC specification:
> +
> +  http://tipc.io/protocol.html
> +
> +
> +Implementation
> +==============
> +
> +TIPC is implemented as a kernel module in net/tipc/ directory.

>   
>   TIPC Base Types
>   ---------------



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
