Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C17111821D
	for <lists+tipc-discussion@lfdr.de>; Tue, 10 Dec 2019 09:21:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iealq-0007kJ-Tz; Tue, 10 Dec 2019 08:21:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1iealo-0007k7-Mv
 for tipc-discussion@lists.sourceforge.net; Tue, 10 Dec 2019 08:21:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WeoF2zPrG1mIxqhBoK1aVzRFSLEQPpqCv9odMBQl9Cc=; b=mttvwiP+G3fC0wU4VErWKotihx
 cDSAt5Bfr3vYDNCXQsXCHh9P5ZXG0Tu2NkRdjQrbh/2IQAX2abh+RJrh6c48DB8d3MuFsKgY6mxgc
 aDErUchzOoRZ5zuIXR7hYtPB05QL+Po6K92eTbOPE87JdZyMt5lY88dcgQvGx+d62Rm0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WeoF2zPrG1mIxqhBoK1aVzRFSLEQPpqCv9odMBQl9Cc=; b=YUT5JgTAF48Ahv/YMxPe6cmNMM
 ZV0fDFj/vSug/Lv/LqXEjtvorQBfX2K9twKYyce3GMkkE1KlczrpibIVuyK3dv/9PPPuOQiFLVv2T
 fCdpW61006C0PppfyzydDGtmeYXnuEPrGzm/O/s0p257GdimXiyH+GxX5AXwIjBs2gVw=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iealk-00GSnV-S9
 for tipc-discussion@lists.sourceforge.net; Tue, 10 Dec 2019 08:21:24 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id F021A4BCC3;
 Tue, 10 Dec 2019 19:21:13 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1575966073; bh=1vuNe
 rE+k9EukVY3g6hOMdTK4G8oAOgyiE9jpskmwvA=; b=Hb23cPrnsDkAQ7kkKotVa
 S+UDiWAq5CQsPM+hhgYw/lvb6lGHbalXGdCPd/Hhylc3HF/9MnfwRVaqyxrP/VOo
 pXvDrGyTdWsEC01cYSfgc1uxCvHF0rTzaAOZ7HWL0hN7cyxayqjrqL4x2YRajOSj
 yyeu0Vr9SGsn3gDtJT4WzE=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id ZIH2K8AhdaPV; Tue, 10 Dec 2019 19:21:13 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 5D7914BD36;
 Tue, 10 Dec 2019 19:21:13 +1100 (AEDT)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 037ED4BCC3;
 Tue, 10 Dec 2019 19:21:11 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: davem@davemloft.net, jon.maloy@ericsson.com, maloy@donjonn.com,
 ying.xue@windriver.com, netdev@vger.kernel.org
Date: Tue, 10 Dec 2019 15:21:01 +0700
Message-Id: <20191210082105.23905-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-Spam-Score: -0.1 (/)
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
X-Headers-End: 1iealk-00GSnV-S9
Subject: [tipc-discussion] [net 0/4] tipc: fix some issues
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

This series consists of some bug-fixes for TIPC.

Tuong Lien (4):
  tipc: fix name table rbtree issues
  tipc: fix potential hanging after b/rcast changing
  tipc: fix retrans failure due to wrong destination
  tipc: fix use-after-free in tipc_disc_rcv()

 net/tipc/bcast.c      |  24 +++--
 net/tipc/discover.c   |   6 +-
 net/tipc/name_table.c | 279 ++++++++++++++++++++++++++++++++------------------
 net/tipc/socket.c     |  32 +++---
 4 files changed, 215 insertions(+), 126 deletions(-)

-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
