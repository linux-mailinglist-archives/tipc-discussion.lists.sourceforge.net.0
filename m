Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ECCF1FC04D
	for <lists+tipc-discussion@lfdr.de>; Thu, 14 Nov 2019 07:43:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iV8r8-0007xs-Rr; Thu, 14 Nov 2019 06:43:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1iV8r7-0007xa-RZ
 for tipc-discussion@lists.sourceforge.net; Thu, 14 Nov 2019 06:43:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jjgMncpeQC16GOeP6tc5stnenLyQ7aY/wc+sh5wkU8s=; b=Mm5dSL6rDZpkO3xIo43rNQw9Nl
 R8ckDuElHXz3U5DGU3xw3XqnSD3cYMvT3tzewQola8/PMIZ+JA/m7yQ2pkfiyW2NSLY5Dtxi1uYBu
 nW+9OY4pJ5qBCqjsrAZZH6a6BW0uSgfWmI1EKCelCAG55HeerIQkWUa3wjJnuGgUnm0Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jjgMncpeQC16GOeP6tc5stnenLyQ7aY/wc+sh5wkU8s=; b=UMp8eS/I31fzAMP9odcu6epS7V
 KeXqOeEu1t+AQORlY1mTASmke1mFo6odGnnvVkk2Zs+wY2yhFv8M8my4QOeinq/6VQFF0x50g2IXa
 1fmVzpAkFdRanwEeoWehV9lpskYGDpETXKGJwNTA8/eGYR7sJlxWETQ8OQYTna9fJUM0=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iV8r3-002gPD-Mq
 for tipc-discussion@lists.sourceforge.net; Thu, 14 Nov 2019 06:43:49 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 161EF4ACC8;
 Thu, 14 Nov 2019 17:43:39 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1573713818; bh=RDF4/
 yIVyLAj1Rimc9K+xUjHJEecffChYVCmEnlfj10=; b=mColWL+eS8dkO1oeO971T
 nCMDxiws5cBwg7s6I90aRArYGoPPq+s95Ug0SKuZKw09fI1+gWBXKc4KUUtqTO5Y
 MjvwbdOTiQaXwXMfZLFGyMSopWpo5DkJTrx3z2cw0C9UPLdZWci2/L3voRp+idlB
 HwJYCcZ5ne/d6LqrYhJAog=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id bAgAx3GH8Hb6; Thu, 14 Nov 2019 17:43:38 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id B4FF84ACFB;
 Thu, 14 Nov 2019 17:43:38 +1100 (AEDT)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id B0F804ACC8;
 Thu, 14 Nov 2019 17:43:37 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jon.maloy@ericsson.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Thu, 14 Nov 2019 13:43:30 +0700
Message-Id: <20191114064332.15061-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-Spam-Score: 1.4 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iV8r3-002gPD-Mq
Subject: [tipc-discussion] [net-next 0/2] nametable related issues
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

The series consists of two individual patches which were sent earlier
but now v2 with some minor updates.

Tuong Lien (2):
  tipc: support in-order name publication events
  tipc: fix name table rbtree issues

 net/tipc/name_table.c | 326 +++++++++++++++++++++++++++++++++-----------------
 net/tipc/name_table.h |   4 +
 2 files changed, 222 insertions(+), 108 deletions(-)

-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
