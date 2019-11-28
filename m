Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FEA610C2C3
	for <lists+tipc-discussion@lfdr.de>; Thu, 28 Nov 2019 04:10:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iaACH-0003sY-L9; Thu, 28 Nov 2019 03:10:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1iaACG-0003sJ-FN
 for tipc-discussion@lists.sourceforge.net; Thu, 28 Nov 2019 03:10:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zji9r5brJrYvard+T00WhwW66JRfBqY0HYpHks9sBVw=; b=ILPy5JM3o4y5TXB8wSNbtYVxs5
 FGHirK8/7QO68t7LxAa7wAceg9FQgFWqsifSpX8C/7TQ3pyXWhTxvqOtn0ZeALxHvF9+MagfIUtvY
 nedYw6c7JIkdZcPqwLN4KIdBIRmdkX14XvMFtnXutNsJkDjsnXyNb0Kc8xCB90G8oMiQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zji9r5brJrYvard+T00WhwW66JRfBqY0HYpHks9sBVw=; b=AHGSoltlUt6ChDRo5fh4QGYNYn
 +16q/c6Gt7qDqFR9Fn8D1tFjzbilcIz+rRoNfbuJ7UbrSPYqhS4JWp5sEoQLJno9Av/rsJcqKDnu9
 7J+8QHvfQ15oG7JRFEcZkbyHgvfwLtsT45xlcFaHqp9oTw6N46DJNjWF4jpfgj6ojW7U=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iaACD-008lmK-Hh
 for tipc-discussion@lists.sourceforge.net; Thu, 28 Nov 2019 03:10:24 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 0B1014B9CC;
 Thu, 28 Nov 2019 14:10:11 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1574910610; bh=ILROK
 FXzc2kko4qLFI5h2rhv0uCmpypo++wMgubVIVg=; b=YIadP5j9eHDLjPqtBzXG4
 pc9D02ddpLb4pN88kFJ8e4pkLZbh0J/2YLYpdfdyXXm+h+E2M5G86mY7q6FSHvoR
 +6IjzlQ7QMM49HpEwD8n5ogVJ5RqL9tIE4pizTl9R9BNhNgWACs+i30JuXhQgddc
 c04Q/bRYm6FYg2DWD1DRHM=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id vIJf6DnFcIQf; Thu, 28 Nov 2019 14:10:10 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id D93AE4B9CE;
 Thu, 28 Nov 2019 14:10:10 +1100 (AEDT)
Received: from ubuntu.dek-tpc.internal (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 0B3B74B9CC;
 Thu, 28 Nov 2019 14:10:09 +1100 (AEDT)
From: Tung Nguyen <tung.q.nguyen@dektech.com.au>
To: davem@davemloft.net, netdev@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net
Date: Thu, 28 Nov 2019 10:10:04 +0700
Message-Id: <20191128031008.2045-1-tung.q.nguyen@dektech.com.au>
X-Mailer: git-send-email 2.17.1
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
X-Headers-End: 1iaACD-008lmK-Hh
Subject: [tipc-discussion]  [net v1 0/4] Fix some bugs at socket layer
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

Tung Nguyen (4):
  tipc: fix potential memory leak in __tipc_sendmsg()
  tipc: fix wrong socket reference counter after tipc_sk_timeout()
    returns
  tipc: fix wrong timeout input for tipc_wait_for_cond()
  tipc: fix duplicate SYN messages under link congestion

 net/tipc/socket.c | 24 +++++++++++++++---------
 1 file changed, 15 insertions(+), 9 deletions(-)

-- 
2.17.1



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
