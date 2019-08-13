Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F3E8B4D6
	for <lists+tipc-discussion@lfdr.de>; Tue, 13 Aug 2019 12:01:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hxTco-0003yt-Rw; Tue, 13 Aug 2019 10:01:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1hxTcl-0003yd-7K
 for tipc-discussion@lists.sourceforge.net; Tue, 13 Aug 2019 10:01:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cYKJq6+ypKKp5YmQGrE2O/s3iVTYHYBAzaq8O3T7Vd0=; b=SB6UFHwWKjyrc+M6ytr58HurRx
 E9wANM79K+AFMxU9CXvAVtZYiybFa545BxppBYmNIE6PYTEaI8fseFrKzoVQvntmXtqHeIj686juV
 fYywFp46D+E0jMSJkqv7K5MfI8unnaC3Aipyz2dPswFLOd3jtl9hhNkI4YBgqG9U8ZU0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cYKJq6+ypKKp5YmQGrE2O/s3iVTYHYBAzaq8O3T7Vd0=; b=Qxt0otZypUJjg0Ey3JF+/Enx4O
 8oaQFd9ytP/64KnnlE1bpI1AKfObZ5IRM2OWdJ/kbtMx8fOdqOzZd78g2xE3fMv2RqDx3mwjon4Ry
 RYoWpMypnOD7BLs9F5u/HrpRo1sh3JhCza+Il06hvqe+lCnVZ2aFSJzCHSE4GOjnqZVQ=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hxTci-0026Ms-7F
 for tipc-discussion@lists.sourceforge.net; Tue, 13 Aug 2019 10:01:51 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 351FD48A95;
 Tue, 13 Aug 2019 20:01:39 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1565690499; bh=yxp15
 j0OThk/BcDQ/wRc2kLBdcKlg84QIXkLffU7QHE=; b=flS4cJIx8btAEqMd9gSGO
 WxiYKblY4bsW440BmdjzRyMqexRi1KNmv4Auy3MVuhB9zCTnGocGSlAgK9KlM6mH
 JuZS/xIKY+pxwJqIGwj0mo3HpUA0gv3QICTmZeurNGKSipS3wgLIATfwLIR/S483
 02Swf+TFau/p5lidyP+FrE=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id EcDcr_Tx5YHf; Tue, 13 Aug 2019 20:01:39 +1000 (AEST)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id D8E1D48A94;
 Tue, 13 Aug 2019 20:01:38 +1000 (AEST)
Received: from tung-VirtualBox.dek-tpc.internal (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 3BAD648A93;
 Tue, 13 Aug 2019 20:01:36 +1000 (AEST)
From: Tung Nguyen <tung.q.nguyen@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jon.maloy@ericsson.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Tue, 13 Aug 2019 17:01:28 +0700
Message-Id: <20190813100131.5987-1-tung.q.nguyen@dektech.com.au>
X-Mailer: git-send-email 2.17.1
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
X-Headers-End: 1hxTci-0026Ms-7F
Subject: [tipc-discussion] [net v1 0/3] Fix some bugs at socket layer
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

This series fixes some bugs at socket layer.

Tung Nguyen (3):
  tipc: fix potential memory leak in __tipc_sendmsg()
  tipc: fix wrong socket reference counter after tipc_sk_timeout()
    returns
  tipc: fix connection failure under link congestion

 net/tipc/socket.c | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

-- 
2.17.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
