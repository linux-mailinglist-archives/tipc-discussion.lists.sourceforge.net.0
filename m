Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2317C6660B
	for <lists+tipc-discussion@lfdr.de>; Fri, 12 Jul 2019 07:16:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hlnue-0003Gh-Rn; Fri, 12 Jul 2019 05:16:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1hlnud-0003GV-PU
 for tipc-discussion@lists.sourceforge.net; Fri, 12 Jul 2019 05:16:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wW3a6HrUCim2y0I+TQA4DDduDpp+15DRConV0Rur4C4=; b=Cjx40m3wHgVdktbiSGcVUBM2B/
 dShaieLzWie2oj3srbloZdA+hmQoHdfccGEHq1xObiBIEnIv3FVo4vdOzP9naMyXSl8DYLQ2wIGXT
 wRYldLGzRze8SJBTzwAslvHRdQcXTUoqGqWdGGGvviC3xk8L1DWmi6HY2RQss7LKrES4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wW3a6HrUCim2y0I+TQA4DDduDpp+15DRConV0Rur4C4=; b=Rd9yoUrR81EEtG2OMYm+bf9SJ/
 R6fmObUVISlsURc/BOPspcFGiIzUaDls8VgwuVT7W8V74i+Btj/EPEjl38UKse8QpN/r+0S0P83zc
 IKQ99uLAYScUwdvUpJyKnlW970Nw/DoUsIO1iquYtsRmzufp3RbEL9lyphtzPpKyEeiQ=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hlnuZ-00Fxy5-VP
 for tipc-discussion@lists.sourceforge.net; Fri, 12 Jul 2019 05:16:03 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 354F645FEC;
 Fri, 12 Jul 2019 15:15:50 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1562908550; bh=X/NiD
 9F4ca5btl8KKqmDa7eqU6izIOjkoSf62MF/nDc=; b=KlCklqw/6rQxRvAUSVXfX
 crjHa/GKb/koZ0wBY58+ZrOT4zEFBfts9qVli+vOze5p1+uz4lawIYEe+xhNuIb+
 pLYTx1fI5enByqKPHGssEDwfV7cLFJtlHe9EYkM162uV+yQru2vFLRpF11msrF02
 7OuSliSC/PuO9ICQEPpt4A=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id fZKVA7TvcXMs; Fri, 12 Jul 2019 15:15:50 +1000 (AEST)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 7B96946093;
 Fri, 12 Jul 2019 15:15:49 +1000 (AEST)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 58D8E45FEC;
 Fri, 12 Jul 2019 15:15:47 +1000 (AEST)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: davem@davemloft.net, jon.maloy@ericsson.com, maloy@donjonn.com,
 ying.xue@windriver.com, netdev@vger.kernel.org
Date: Fri, 12 Jul 2019 12:15:35 +0700
Message-Id: <20190712051537.10826-1-tuong.t.lien@dektech.com.au>
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
X-Headers-End: 1hlnuZ-00Fxy5-VP
Subject: [tipc-discussion] [net-next 0/2] tipc: link changeover issues
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
Cc: tipc-discussion@lists.sourceforge.net
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

 net/tipc/link.c | 119 +++++++++++++++++++++++++++++++++++++++++++++++++-------
 net/tipc/msg.c  |  59 ++++++++++++++++++++++++++++
 net/tipc/msg.h  |  28 ++++++++++++-
 net/tipc/node.c |   6 ++-
 net/tipc/node.h |   6 ++-
 5 files changed, 199 insertions(+), 19 deletions(-)

-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
