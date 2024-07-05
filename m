Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0444F9281F9
	for <lists+tipc-discussion@lfdr.de>; Fri,  5 Jul 2024 08:21:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1sPcJS-0000SV-Bi;
	Fri, 05 Jul 2024 06:20:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ps13.bisht@gmail.com>) id 1sPcJR-0000SP-4x
 for tipc-discussion@lists.sourceforge.net;
 Fri, 05 Jul 2024 06:20:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=97dP56UnuuUYyfNJe/pGBeX/ZB6X4UF4AsoYU11Z9nE=; b=mLz6gAoYc7Jo7u6GGRvrfaJSg1
 dsBkdKU0f/+8IHdyKGYVd8wgYvcs7eJP1Ny56JCST4J4DJGsTlAKG5P8alqxeGJYkvK93CAviynrE
 ZSpJ1MU4+K2tU6OiZULz0LaXVyTFCjxoc3SNB1ijzxvHr/ocGog9J/EegeEJFhGZujU8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=97dP56UnuuUYyfNJe/pGBeX/ZB6X4UF4AsoYU11Z9nE=; b=F
 t6pJUsZ3ql7Voxp/fLmeFdfsuOJvwsuEnxQvUq7h+w5W8fIBmreRulmBA8ivnqX7w1BW434ixtgKb
 VvSI1yfny0hRXp8SKVDKJPMweGWiRS7UrY81fIoyVZ6HfSPnhixZWu1UfPhtUu8X0Sd8sm6/KlFkK
 sEWit05bYILiBXcQ=;
Received: from mail-oa1-f45.google.com ([209.85.160.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sPcJR-0004HH-Ix for tipc-discussion@lists.sourceforge.net;
 Fri, 05 Jul 2024 06:20:53 +0000
Received: by mail-oa1-f45.google.com with SMTP id
 586e51a60fabf-25e00f348e6so719844fac.1
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 04 Jul 2024 23:20:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1720160447; x=1720765247; darn=lists.sourceforge.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=97dP56UnuuUYyfNJe/pGBeX/ZB6X4UF4AsoYU11Z9nE=;
 b=IpzxrYkbarIf5NyMlwhRbtX+EkW/moB+LURp9dsGO5YP8iK6s/ta5GC6j+NbL66W8V
 SVdqsf+yI9Ggtqno1RS+MG7AH5gRUS7G48+VWVwGqTo+pxJkxZSLctSOuN2cfv7mCQD/
 VIgwVnO2QEoHUzaQZYF6WDZs3t5Paq9rIf1kdOPTFe7AEfg1AYItlKhIvMNSd/lv2adY
 QmLP8ysYNeLXijq3l476Q3bvkhl0rMg8cnFJguLQLdqbJGx7Pvyyy9lPMuoYvKoRlIiu
 imBFEb7RgruHazgOhncJ2fwUOEUQxIIkABTcPh7dvEa9kP9pLg5M8n0cCXANcti2zGpu
 oJ7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1720160447; x=1720765247;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=97dP56UnuuUYyfNJe/pGBeX/ZB6X4UF4AsoYU11Z9nE=;
 b=cSw5TuNSIQSOkFtAqkCg5cnudPr29hd3erJv6ktIuX6x182nMDEInadrz9PeBUgDdE
 rcAVKfK1FJ96QL0UfWaN+LubwHpGgxqLwZwIrPiCyD+nkVemzP0vg9IINY9e6mnpIGL7
 XsCmwRDPtWwBkCoFJSjvWTBhq8TTgDgGvq/sejRQ0m4G+ZV9+vdeWW1BrGaUph9ufCzC
 rlop4fJKMURHo+hSG94SMtQDJdP9Ik7u9zj4SckR3s1VAkfg0MIrpRYN0i4TLBaLvERF
 eq0cs4gexMYhSyLCuEehI/VyxEfoVx0sc0sv6YA4cRGn2I2+anvfLLZgJAibbb5DTOzX
 fS+g==
X-Gm-Message-State: AOJu0YwLB2lcOcOIfgRWR5zOgDNHnDFr7331EglVJExeui1910X4uUqu
 U7n2jzB5oDqsnnpky7UpSHJnQEObnznTKxzwD2sKz2quBXRHQ5/Ri1NwV5zqkeCAnfs0e4ezraP
 7/tJNHrVL+cRzmtuG2JKlXtx8ATzCdCve
X-Google-Smtp-Source: AGHT+IGkyKeJPDkmpcWjo7kjIvuEMpsZkq9fkQ5xTFMFDPd91MLuannpoYPrxq0RSlcC2TtUw9BMcZEzAuaLlaOEomc=
X-Received: by 2002:a05:6870:a1a0:b0:25d:307e:fac1 with SMTP id
 586e51a60fabf-25e2bf102acmr3088094fac.49.1720160447026; Thu, 04 Jul 2024
 23:20:47 -0700 (PDT)
MIME-Version: 1.0
From: prakash bisht <ps13.bisht@gmail.com>
Date: Fri, 5 Jul 2024 11:50:36 +0530
Message-ID: <CACB1WsS1ZVUb8Lv3BY171oS8qAbhoL1m7B812FT1D9MVQr6DUg@mail.gmail.com>
To: tipc-discussion@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi All, We have been using TIPC sockets for a while now. Off
 late we are facing issues randomly where the CPU is frozen. The TIPC module
 seems to be entering in an infinite loop while trying to remove publication
 from a failed node. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.160.45 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.160.45 listed in bl.score.senderscore.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ps13.bisht[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.45 listed in wl.mailspike.net]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [209.85.160.45 listed in list.dnswl.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sPcJR-0004HH-Ix
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [tipc-discussion] Reg: TIPC Error - "Unable to remove publication
 from failed node"
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

Hi All,



We have been using TIPC sockets for a while now. Off late we are facing
issues randomly where the CPU is frozen.

The TIPC module seems to be entering in an infinite loop while trying to
remove publication from a failed node.

This is resulting in log flooding. Almost 50 GB worth of logs written in
1-2 hours.  This also seems to be hogging the CPU  resulting in the
non-responsive system. We had to do a hard shutdown to recover from it.


Below are the logs snippets from the kernel log file.

#####################################################################################################################






*Jun 29 14:45:36 in-debbld-33 kernel: [1724399.196945] Unable to remove
publication from failed node Jun 29 14:45:36 in-debbld-33 kernel:
[1724399.196945]  (type=20185106, lower=1, node=0xd1045013,
port=2177385505, key=2177385506) Jun 29 14:45:36 in-debbld-33 kernel:
[1724399.196948] Unable to remove publication from failed node Jun 29
14:45:36 in-debbld-33 kernel: [1724399.196948]  (type=20185106, lower=1,
node=0xd1045013, port=2177385505, key=2177385506) Jun 29 14:45:36
in-debbld-33 kernel: [1724399.196954] Unable to remove publication from
failed node Jun 29 14:45:36 in-debbld-33 kernel: [1724399.196954]
(type=20185106, lower=1, node=0xd1045013, port=2177385505, key=2177385506)*

#####################################################################################################################



Any idea why this would be happening ?

Would appreciate any help.


*Kernel version : 4.19.0-26-amd64*


Thanks,

Prakash

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
