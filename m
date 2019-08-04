Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA0680AC8
	for <lists+tipc-discussion@lfdr.de>; Sun,  4 Aug 2019 14:04:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1huFEx-00050v-36; Sun, 04 Aug 2019 12:03:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1huFEu-00050i-Ee
 for tipc-discussion@lists.sourceforge.net; Sun, 04 Aug 2019 12:03:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WAjDNCeSbK8G4bmc5GPHMO1A1eSqvrTU+o1J+EkI+vE=; b=aHo6WHIxhGUNipqSXvVkwRhhVK
 naGfLHtXLuTNE1amCs7zgEuYUlD2S08xBAMKC5xVCRAWzvVqob3RVYJNulTdVgalnqiujc5mw/1Yw
 l+5MfNrnn0ysEostMV0fPdeTZQUuzRT/R8Xs23VgPJ0sdI0QgNkpT0XYmWAfKwdpNMGY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=WAjDNCeSbK8G4bmc5GPHMO1A1eSqvrTU+o1J+EkI+vE=; b=G
 +ppuITEm1aBWqB/suD6cdLp8PvODf7ZUBdLWoW2H8hDS6uRTLFjEt5+sIHs6qBSx0LuVLK4VVTLPP
 +51PpfHckMKqwXzxXSF3sN1+I+I9ki73b2oXf30EAKTUsgx86tlMKtsmmVxXQ1zrrCL+XRxZ79zba
 KIMWXUh52Q/EZCDI=;
Received: from mail1.windriver.com ([147.11.146.13])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.1:ECDHE-RSA-AES256-SHA:256) (Exim 4.90_1) id 1huFEq-009sFK-Fv
 for tipc-discussion@lists.sourceforge.net; Sun, 04 Aug 2019 12:03:51 +0000
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
 by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x74C3Wfu008335
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Sun, 4 Aug 2019 05:03:32 -0700 (PDT)
Received: from pek-yxue-d1.wrs.com (128.224.155.90) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.40) with Microsoft SMTP Server id 14.3.468.0;
 Sun, 4 Aug 2019 05:03:32 -0700
From: Ying Xue <ying.xue@windriver.com>
To: <jon.maloy@ericsson.com>
Date: Sun, 4 Aug 2019 19:52:25 +0800
Message-ID: <1564919548-29132-1-git-send-email-ying.xue@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1huFEq-009sFK-Fv
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
Cc: hdanton@sina.com, tipc-discussion@lists.sourceforge.net
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
