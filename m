Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF213A4AA4
	for <lists+tipc-discussion@lfdr.de>; Fri, 11 Jun 2021 23:34:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lromj-0004HW-VU; Fri, 11 Jun 2021 21:33:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1lromj-0004HL-0e
 for tipc-discussion@lists.sourceforge.net; Fri, 11 Jun 2021 21:33:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GFzuUzzsWWPFvPe13fiN+mMnQlVLlkOymPN/fzh9VlE=; b=IYxiUa/6jPq7Rz9kUTdutBcVj/
 SQ3/XxYXbm7DKHnaBH7mIBbcEO32HpdqcMsIZYR/5JtdinhyFG4ulr838JQJhnD2k7wyl6wf8VOFt
 goeIghkDzi1Xo2SrNDp2HThVXvIvhChwt5FLdpSZMuqIjwG7IY/8DLouFSmS3sYXh/bI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=GFzuUzzsWWPFvPe13fiN+mMnQlVLlkOymPN/fzh9VlE=; b=j
 +mU30QEIaHlmsmJy1H7zfZbcSlNU23weWYlTQL3nheR6tEZlowsgdtH8nrStTcDsLTUwL94C2cg68
 T7qG0Q7ibCAJqkaO31te8UxQvKAdvCuVhXjymtyBDAziRSum4Z6OJ7WL2yhAtl0OJSbXI3O5/QjA1
 V02w0yuET0qvXWgI=;
Received: from mail-qt1-f175.google.com ([209.85.160.175])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lromb-0002mO-It
 for tipc-discussion@lists.sourceforge.net; Fri, 11 Jun 2021 21:33:48 +0000
Received: by mail-qt1-f175.google.com with SMTP id v6so3710160qta.9
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 11 Jun 2021 14:33:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GFzuUzzsWWPFvPe13fiN+mMnQlVLlkOymPN/fzh9VlE=;
 b=soCYuYiG3XbkjesK21vdrzqsgnCajLYqbf55UveQ2bpbpX8FPiYPOB0+AEQLEBB9D6
 iwgPAQnaB2J7mHIrfwQ1qsMLpmwP06rG+gLqJuyBFuL1CZSPGuTsPJHLuG321dtRGj5s
 rDSfg1FmgYBt2enf3tb/6fZNQzR+VJRm+oP1crSkCCSIwnzmc+5H473cMOISIARtYY9p
 l4vNeD/IKk97/XPABv/qyJlMxjeSGxesuT7Jn7iKmJBRTSXCfCsvKGXOLX7FxXW4yIcW
 FE6x+ihYD5s12LMUJQYQlWULi2IGsEVI02KVJdq2TlUhhpObwQDGbjyxclSf+cwnShuU
 HzWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GFzuUzzsWWPFvPe13fiN+mMnQlVLlkOymPN/fzh9VlE=;
 b=sH5ILmAbnGkbVdJqVThRqzDnXb2L5hw5q5acmWb+7K7bIvXrqshD8zmI3hHJoNYmtQ
 93wTmctLD2htOg/wTJiJC1Et9cA4WeA0Rmi70q8ZAHS9xscFWi+9nPYH4zXHDxPQlnQK
 ETYCBXsAfK6wICDP8JvUfLuPtAhcQwZn1sd2frJt+jM7tY5OjrvRjB3bOh04x8wVroh0
 LFuwFkjIop72ODldZxBNMgNv66FYtMDFOXrraZ77L92/LkjIU2eJWQMaP4t6u3DK/eKu
 tGQ6/SkeafAotRyzqgqKrsKY3vlK1/iiPwbELYFiKQLxYS2XpRA68tBXVuIiJPEjDorD
 RaDA==
X-Gm-Message-State: AOAM5320oP7nGXDMr5GBUNdE8rDO6awZR4Jh0hdvYa4S5MP0iUu6mzZn
 V+7tgyn6WdzDC8fbJo4cAXCAMKjbC8o=
X-Google-Smtp-Source: ABdhPJxuuwHLd5G1e0flgzr3OwvLF0GcDFsVbJt6KjTLSmsviowMveTrW8qgsWJu0g3KVF1qOc4JVA==
X-Received: by 2002:ac8:5481:: with SMTP id h1mr5852333qtq.206.1623447216659; 
 Fri, 11 Jun 2021 14:33:36 -0700 (PDT)
Received: from localhost (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id l13sm4754597qtk.50.2021.06.11.14.33.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Jun 2021 14:33:36 -0700 (PDT)
From: Xin Long <lucien.xin@gmail.com>
To: tipc-discussion@lists.sourceforge.net
Date: Fri, 11 Jun 2021 17:33:35 -0400
Message-Id: <409805d797d6eafe4bf91d96b3c579844cf753c8.1623447215.git.lucien.xin@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.160.175 listed in list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: tipc.io]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: tipc.io]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: tipc.io]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.175 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lromb-0002mO-It
Subject: [tipc-discussion] [PATCH net] Documentation: add more details in
 tipc.rst
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
