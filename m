Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E3189815
	for <lists+tipc-discussion@lfdr.de>; Mon, 12 Aug 2019 09:45:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hx51a-0001nl-OD; Mon, 12 Aug 2019 07:45:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1hx51Z-0001nd-9u
 for tipc-discussion@lists.sourceforge.net; Mon, 12 Aug 2019 07:45:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=k17S6QTHlEn7aixAtlPqp0jKidt1dMmFbJ3wKyfLgno=; b=mRFt6gIAi6r32Vr/iT/Iot4j3Z
 DzH+waiUP7/9AO1GbW8EdI/gCed6db+1Ms67u/Hm9eda63qO2/Qca30XRY9vfN9IhzXC2yrWsSIU2
 +VePPpSdCKH01KKRwpc5Tt+icurdGAOH0JgKraBNtpRpPDBUxAppPWAvEUUeOk3q4/cg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=k17S6QTHlEn7aixAtlPqp0jKidt1dMmFbJ3wKyfLgno=; b=G
 +pzX25Qfi6RYySZ3GfGa8yVN8LIMXJpfc4Ew+qxyAj9Ndq+/JkNXZuzlrJm9t6/z+emGIio75wzuI
 48VwWI1yGqP+jdvI6fDhpQo02ym8ad5MuQBTzRGcC5TY/32IyiyjuRkR6vJcYV3FJJSw6dNhw+nW/
 F/g+3sT/Kknibs1E=;
Received: from mail5.windriver.com ([192.103.53.11] helo=mail5.wrs.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hx51V-000qRq-1A
 for tipc-discussion@lists.sourceforge.net; Mon, 12 Aug 2019 07:45:49 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x7C7heW4021295
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Mon, 12 Aug 2019 00:44:11 -0700
Received: from pek-yxue-d1.wrs.com (128.224.155.90) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.40) with Microsoft SMTP Server id 14.3.468.0;
 Mon, 12 Aug 2019 00:43:52 -0700
From: Ying Xue <ying.xue@windriver.com>
To: <davem@davemloft.net>, <netdev@vger.kernel.org>
Date: Mon, 12 Aug 2019 15:32:39 +0800
Message-ID: <1565595162-1383-1-git-send-email-ying.xue@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hx51V-000qRq-1A
Subject: [tipc-discussion] [PATCH v2 0/3] Fix three issues found by syzbot
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
 tipc-discussion@lists.sourceforge.net, jakub.kicinski@netronome.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

In this series, try to fix two memory leak issues and another issue of
calling smp_processor_id() in preemptible context.

Changes since v1:
 - Fix "Reported-by:" missing in patch #3, which was reported by Jakub
   Kicinski

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
