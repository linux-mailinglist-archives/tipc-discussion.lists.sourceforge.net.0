Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A484872F5
	for <lists+tipc-discussion@lfdr.de>; Fri,  9 Aug 2019 09:30:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hvzLc-0003fe-CF; Fri, 09 Aug 2019 07:30:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1hvzLa-0003fW-Kq
 for tipc-discussion@lists.sourceforge.net; Fri, 09 Aug 2019 07:29:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WAjDNCeSbK8G4bmc5GPHMO1A1eSqvrTU+o1J+EkI+vE=; b=IwGiVGMOWNryQVQJpqdtEl9vPU
 KVc6aVYPmyYKJ6ZIOllgU0Zl0uDY3ovecFLNir43SlxuBxm+9pr/bWgTQKfYXZv8e3+CmaYquGWs2
 MWsqQ3m9r8EqoTcH0uChcVqvs7mpEHX04dMeux80rXBb8JSbDrVvIstd3Vt4cD89tFwA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=WAjDNCeSbK8G4bmc5GPHMO1A1eSqvrTU+o1J+EkI+vE=; b=n
 B8EOU/nCD55B/LDEJEW/lJa/X89tAJpGMVR8etZC5UXjS8PPreeEUu592qM477i3RFhcVRPml1U6b
 RMw5zcKMIk1MDdRwSkcwQQnldbgRVUBnJAUTHZWSwvuEGGByBU/fK1+k9U7Dw/jv6X5wCBFrZP/I3
 5USABbTqBoIbzeYE=;
Received: from mail5.windriver.com ([192.103.53.11] helo=mail5.wrs.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hvzLY-00H1Tr-W0
 for tipc-discussion@lists.sourceforge.net; Fri, 09 Aug 2019 07:29:58 +0000
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
 [147.11.189.41])
 by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x797SGKH017009
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Fri, 9 Aug 2019 00:28:27 -0700
Received: from pek-yxue-d1.wrs.com (128.224.155.90) by ALA-HCB.corp.ad.wrs.com
 (147.11.189.41) with Microsoft SMTP Server id 14.3.468.0;
 Fri, 9 Aug 2019 00:28:06 -0700
From: Ying Xue <ying.xue@windriver.com>
To: <davem@davemloft.net>, <netdev@vger.kernel.org>
Date: Fri, 9 Aug 2019 15:16:54 +0800
Message-ID: <1565335017-21302-1-git-send-email-ying.xue@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hvzLY-00H1Tr-W0
Subject: [tipc-discussion] [PATCH 0/3] Fix three issues found by syzbot
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
Cc: syzkaller-bugs@googlegroups.com, hdanton@sina.com,
 tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

In this series, try to fix two memory leak issues and another issue of
calling smp_processor_id() in preemptible context.

Ying Xue (3):
  tipc: fix memory leak issue
  tipc: fix memory leak issue
  tipc: fix issue of calling smp_processor_id() in preemptible

 net/tipc/group.c     | 22 +++++++++++++---------
 net/tipc/node.c      |  7 +++++--
 net/tipc/udp_media.c | 12 +++++++++---
 3 files changed, 27 insertions(+), 14 deletions(-)

-- 
2.7.4



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
