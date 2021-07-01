Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A78DC3B8B20
	for <lists+tipc-discussion@lfdr.de>; Thu,  1 Jul 2021 02:18:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lykPi-0002yZ-Hi; Thu, 01 Jul 2021 00:18:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1lykPf-0002yR-W8
 for tipc-discussion@lists.sourceforge.net; Thu, 01 Jul 2021 00:18:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SBtwJKgc0T+2dOTNszlDoLaX2IUTZ6r/oUir5NyFDqs=; b=FWim2vf+6Y0g6zk+u0lLWxdvBw
 wWLRy9ymP/yod0Ks+eY06MtMICVP99ihJ8pNBA2s5F593MwEgz4zKi3eqHxhxJLxP0YpCtEGvcDzr
 WOo92J5FaTvcvFY1fXy4rW/5meQETFHMrada0E2/qQsyIl3kvYUmFkhGCpARlYH0dsME=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
 Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=SBtwJKgc0T+2dOTNszlDoLaX2IUTZ6r/oUir5NyFDqs=; b=n
 J6LrV4jZrqg50tOYYjjj7/5mb1+K1eXC6f1HQzwvy2qjK+Wyuy3o6gXrrIYztJ8xbjqLDi3DRVGiX
 wjexmoNnhwBajb51rH/cKNupd1YzkNWGmBRC/gw2BDwniaAqFboOxm+Pxdrbh0dewio8tw8NxebhO
 sAyT+o33rssfvyEM=;
Received: from mail-wm1-f47.google.com ([209.85.128.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lykPV-0006ta-3d
 for tipc-discussion@lists.sourceforge.net; Thu, 01 Jul 2021 00:18:39 +0000
Received: by mail-wm1-f47.google.com with SMTP id
 p10-20020a05600c430ab02901df57d735f7so5628273wme.3
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 30 Jun 2021 17:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SBtwJKgc0T+2dOTNszlDoLaX2IUTZ6r/oUir5NyFDqs=;
 b=NgxfzqpIKr5S62MlJPBAm9TKS0yZIBo4rrsx+wx1JwXLgjUvXzDwQJgLckwL0wFEHN
 RYd95r9e2lar4a6VYXRka4PwGJibgINq2euNF3ShvXKDtAUD9SrUVjZY16sdnEwvF8kL
 tOlzHkGIHPBWhmHN5i28ZX1GQQmqasTws6Qtt0bj2lf3zcw1eQGG7BhE5Tck8HN9FRtP
 IAqh/3CQRCMpB8UuJoa1ZOwImbc7PMzRsvsL32TY7tYF9HjcxOcDAZkB0r/nyY9xzXsZ
 jjuHSCUFrNsmFehFVqXlAMXKi6TgieZtCSX9goC1AUJYvgeVx4f2lkwpeq/zEkUeu00v
 PcMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SBtwJKgc0T+2dOTNszlDoLaX2IUTZ6r/oUir5NyFDqs=;
 b=S4fSoMeDxrWHXlD7tpZ9B0JSXBCcVyYJkrXB/7skpo/dM2rDlwDamFh6XaP/VVtWwD
 zBNEMa+eo7y8xe7h4cXuryEY7VJF0fbPS+zTTa/H6OHK9vieXHAQn/IigpFwafJ7MNsA
 /Pyx9d/ZPvU9a5WvhAzomxbliJLRr3F10H9rlT3qO1i3qnLVX1+mfhsVR5tvlmyuvn2X
 lCj/ba36usUtDtPle5IDx/t3F1B+rBMuGsijdKJ6mbtYZ0XklNZTZ8rwtimHOmiaZ4qn
 I+kLoYdIo+76yTdDlIK+oEazylgT80SifPL12AcwUYeeiaE/nams9/vhreHP0gZNYJXk
 vyzg==
X-Gm-Message-State: AOAM5308jA7glN7aDK3JpE6nM8EegnR5OTBlmViAsoUgqJeaqlInf1cr
 r34qEJqFkmpI/TedH40CJ3P8Gg3cKjf83g==
X-Google-Smtp-Source: ABdhPJzS3duIbKQHVT0j5Qh46XCZi3OqW8a1+2CS0IeAiYsSHgYjl4kd+D+JTMRCQMSQuhNuirr4wA==
X-Received: by 2002:a05:600c:3b8a:: with SMTP id
 n10mr40708656wms.123.1625098702688; 
 Wed, 30 Jun 2021 17:18:22 -0700 (PDT)
Received: from localhost (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id l64sm7739822wmf.23.2021.06.30.17.18.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Jun 2021 17:18:22 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: network dev <netdev@vger.kernel.org>, davem@davemloft.net, kuba@kernel.org,
 Jon Maloy <jmaloy@redhat.com>, tipc-discussion@lists.sourceforge.net
Date: Wed, 30 Jun 2021 20:18:20 -0400
Message-Id: <092c608f3bcf0e5db62cfe19379285c29cb37a43.1625098700.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: tipc.io]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.47 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.47 listed in list.dnswl.org]
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
X-Headers-End: 1lykPV-0006ta-3d
Subject: [tipc-discussion] [PATCH net-next] Documentation: add more details
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

kernel-doc for TIPC is too simple, we need to add more information for it.

This patch is to extend the abstract, and add the Features and Links items.

Signed-off-by: Xin Long <lucien.xin@gmail.com>
Acked-by: Jon Maloy <jmaloy@redhat.com>
---
 Documentation/networking/tipc.rst | 121 +++++++++++++++++++++++++++++-
 1 file changed, 118 insertions(+), 3 deletions(-)

diff --git a/Documentation/networking/tipc.rst b/Documentation/networking/tipc.rst
index 76775f24cdc8..ab63d298cca2 100644
--- a/Documentation/networking/tipc.rst
+++ b/Documentation/networking/tipc.rst
@@ -4,10 +4,125 @@
 Linux Kernel TIPC
 =================
 
-TIPC (Transparent Inter Process Communication) is a protocol that is
-specially designed for intra-cluster communication.
+Introduction
+============
 
-For more information about TIPC, see http://tipc.sourceforge.net.
+TIPC (Transparent Inter Process Communication) is a protocol that is specially
+designed for intra-cluster communication. It can be configured to transmit
+messages either on UDP or directly across Ethernet. Message delivery is
+sequence guaranteed, loss free and flow controlled. Latency times are shorter
+than with any other known protocol, while maximal throughput is comparable to
+that of TCP.
+
+TIPC Features
+-------------
+
+- Cluster wide IPC service
+
+  Have you ever wished you had the convenience of Unix Domain Sockets even when
+  transmitting data between cluster nodes? Where you yourself determine the
+  addresses you want to bind to and use? Where you don't have to perform DNS
+  lookups and worry about IP addresses? Where you don't have to start timers
+  to monitor the continuous existence of peer sockets? And yet without the
+  downsides of that socket type, such as the risk of lingering inodes?
+
+  Welcome to the Transparent Inter Process Communication service, TIPC in short,
+  which gives you all of this, and a lot more.
+
+- Service Addressing
+
+  A fundamental concept in TIPC is that of Service Addressing which makes it
+  possible for a programmer to chose his own address, bind it to a server
+  socket and let client programs use only that address for sending messages.
+
+- Service Tracking
+
+  A client wanting to wait for the availability of a server, uses the Service
+  Tracking mechanism to subscribe for binding and unbinding/close events for
+  sockets with the associated service address.
+
+  The service tracking mechanism can also be used for Cluster Topology Tracking,
+  i.e., subscribing for availability/non-availability of cluster nodes.
+
+  Likewise, the service tracking mechanism can be used for Cluster Connectivity
+  Tracking, i.e., subscribing for up/down events for individual links between
+  cluster nodes.
+
+- Transmission Modes
+
+  Using a service address, a client can send datagram messages to a server socket.
+
+  Using the same address type, it can establish a connection towards an accepting
+  server socket.
+
+  It can also use a service address to create and join a Communication Group,
+  which is the TIPC manifestation of a brokerless message bus.
+
+  Multicast with very good performance and scalability is available both in
+  datagram mode and in communication group mode.
+
+- Inter Node Links
+
+  Communication between any two nodes in a cluster is maintained by one or two
+  Inter Node Links, which both guarantee data traffic integrity and monitor
+  the peer node's availability.
+
+- Cluster Scalability
+
+  By applying the Overlapping Ring Monitoring algorithm on the inter node links
+  it is possible to scale TIPC clusters up to 1000 nodes with a maintained
+  neighbor failure discovery time of 1-2 seconds. For smaller clusters this
+  time can be made much shorter.
+
+- Neighbor Discovery
+
+  Neighbor Node Discovery in the cluster is done by Ethernet broadcast or UDP
+  multicast, when any of those services are available. If not, configured peer
+  IP addresses can be used.
+
+- Configuration
+
+  When running TIPC in single node mode no configuration whatsoever is needed.
+  When running in cluster mode TIPC must as a minimum be given a node address
+  (before Linux 4.17) and told which interface to attach to. The "tipc"
+  configuration tool makes is possible to add and maintain many more
+  configuration parameters.
+
+- Performance
+
+  TIPC message transfer latency times are better than in any other known protocol.
+  Maximal byte throughput for inter-node connections is still somewhat lower than
+  for TCP, while they are superior for intra-node and inter-container throughput
+  on the same host.
+
+- Language Support
+
+  The TIPC user API has support for C, Python, Perl, Ruby, D and Go.
+
+More Information
+----------------
+
+- How to set up TIPC:
+
+  http://tipc.io/getting_started.html
+
+- How to program with TIPC:
+
+  http://tipc.io/programming.html
+
+- How to contribute to TIPC:
+
+- http://tipc.io/contacts.html
+
+- More details about TIPC specification:
+
+  http://tipc.io/protocol.html
+
+
+Implementation
+==============
+
+TIPC is implemented as a kernel module in net/tipc/ directory.
 
 TIPC Base Types
 ---------------
-- 
2.27.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
