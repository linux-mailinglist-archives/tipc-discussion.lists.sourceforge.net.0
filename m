Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A04D33E56
	for <lists+tipc-discussion@lfdr.de>; Tue,  4 Jun 2019 07:23:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hY1uY-00047e-4c; Tue, 04 Jun 2019 05:23:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1hY1uW-00047P-Hm
 for tipc-discussion@lists.sourceforge.net; Tue, 04 Jun 2019 05:23:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fxWGohM7EQwdLSPoTBe2xsdNeMlrI6RXHi5WNbkAUYk=; b=fYlWI0bXHaGvGOOSYBj6p+ypFW
 oIxaII3atnuPhcW+zl7G5j4E8Oj2rUSE3bLlWzmr2c+7rRGb7VLOhy76I/6fEBtaGOB6LyLwkmUrB
 cXvirJE05lKEm5LW4ekQ+VmUFE3vFCPajay6E/uQNpEmz42mZnrRS/TNN4+FYdlAv5OQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fxWGohM7EQwdLSPoTBe2xsdNeMlrI6RXHi5WNbkAUYk=; b=dJ5pTHdPRUhMbAAA8Q8o3MO5D1
 VbyKDuv04/U0R5RL3NU8idEIdrM1Hmec/Do5DtBY5gYqgyOuhKvYedmRYBVsNmuQPQcTWNsKA2hzA
 FpyltVzrJq186/E4+Xrs0lMWbsLfzTtEyUehbCYzfGnfp0JSqZP3vauGJM55VoMVvClE=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hY1uU-005JoP-3t
 for tipc-discussion@lists.sourceforge.net; Tue, 04 Jun 2019 05:23:00 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 626EFE24D3;
 Tue,  4 Jun 2019 15:22:50 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1559625770; bh=q6gE2
 hjBW4ipTokbJ4HWUzKFvqwg864zxLsDhuaC9nk=; b=hBYNeMBFry4QJXd2tPyfH
 eWpJ1DJbfV8BIGCqwVIdQ9GyOcoU1Z+ZnZxB/by8aA8BmDIDg9lanciCg55PGH3n
 3t+x8HxCCwLXouEt4Zy7bWQpUSIrv0VoXeMP2O/rVR5ItAQ/gBVM1Lhyhr57qkDp
 qrk0zfDSOSHsTfDT+AvxC4=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id H8uxZrhP3axQ; Tue,  4 Jun 2019 15:22:50 +1000 (AEST)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id EAB7BE2499;
 Tue,  4 Jun 2019 15:22:49 +1000 (AEST)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id BD086E2498;
 Tue,  4 Jun 2019 15:22:47 +1000 (AEST)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jon.maloy@ericsson.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Tue,  4 Jun 2019 12:22:37 +0700
Message-Id: <20190604052239.9352-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hY1uU-005JoP-3t
Subject: [tipc-discussion] [PATCH RFC 0/2] tipc: link changeover issues
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

This patch series is to resolve some issues found with the current link
changeover mechanism, it also includes an optimization for the link
synching.

Tuong Lien (2):
  tipc: optimize link synching mechanism
  tipc: fix changeover issues due to large packet

 net/tipc/link.c | 118 +++++++++++++++++++++++++++++++++++++++++++++++++-------
 net/tipc/msg.c  |  62 +++++++++++++++++++++++++++++
 net/tipc/msg.h  |  28 +++++++++++++-
 net/tipc/node.c |   6 ++-
 net/tipc/node.h |   6 ++-
 5 files changed, 202 insertions(+), 18 deletions(-)

-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
