Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A53C18452A
	for <lists+tipc-discussion@lfdr.de>; Fri, 13 Mar 2020 11:48:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jChrD-0006kY-MH; Fri, 13 Mar 2020 10:47:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jChrC-0006kO-BS
 for tipc-discussion@lists.sourceforge.net; Fri, 13 Mar 2020 10:47:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z77j2pPJ2NvpL41aFGFOUfXCJVFwhJiyPz8Xq8IiP9M=; b=GjKYWdWNZRHXNsdYSrpgtrv6da
 9+k/Ql3Psti1cMO9188opE1fvQefbZeWtuxV2HoQi7s1dH7ti5kGtQrhUTUUJVjxAWwMYRJTSV/JX
 6eG9JfbLUFCxoLua+Sw+uIVCVKqzpvVOIJH8JDoZqKV23U8lgSWvAulXlPGnbhXv64Nw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=z77j2pPJ2NvpL41aFGFOUfXCJVFwhJiyPz8Xq8IiP9M=; b=ABiJi0Yjr4MseV3K5Ap1aMxDzl
 8txYqSf5knGxYjSo0lHiuU2o30BztIEFgT6AD+o3b1wqZ3dlqAJs6nIGYmQuCv+VGeybNr3Caj+30
 rQa50F0E+N+nHPhxJzENJV5RgycQJQ5qxTTSi1LNokmlVne6avSf1iNsaRlNWmox+src=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jChr5-0005QJ-Fj
 for tipc-discussion@lists.sourceforge.net; Fri, 13 Mar 2020 10:47:58 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 72CF34DA5F;
 Fri, 13 Mar 2020 21:47:41 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1584096461; bh=GWDnB
 6ZCZKGxbgMfZs1PbBNNJroe7MLEUHHUhu9yx94=; b=OMH04N87JR7KCauzg2rC2
 Ov6qNA7GlfZHr2ZEuhl+0B1ak3bjaCkeFCY4ZP7djPMlatP97c2lvATBTfVgwvTM
 /4IHp/BuPKJpz2jnOGmTt5RtlS0uREQI6QVpZfg2cg8qn0GgnJ/pViijomNQEGa5
 /tXrKG0LvpjzSQAUbLz36I=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Jf7wNClI16k1; Fri, 13 Mar 2020 21:47:41 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id CF4B64DA76;
 Fri, 13 Mar 2020 21:47:40 +1100 (AEDT)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 9D7EC4DA5F;
 Fri, 13 Mar 2020 21:47:39 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jmaloy@redhat.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Fri, 13 Mar 2020 17:47:26 +0700
Message-Id: <20200313104728.2330-1-tuong.t.lien@dektech.com.au>
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
X-Headers-End: 1jChr5-0005QJ-Fj
Subject: [tipc-discussion] [PATCH RFC 0/2] tipc: add a couple of
 improvements for broadcast
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

Tuong Lien (2):
  tipc: add Gap ACK blocks support for broadcast link
  tipc: enable broadcast retransmission via unicast

 net/tipc/bcast.c  |  16 +-
 net/tipc/bcast.h  |   4 +-
 net/tipc/link.c   | 442 +++++++++++++++++++++++++++++++++---------------------
 net/tipc/link.h   |   8 +-
 net/tipc/msg.h    |  14 +-
 net/tipc/node.c   |  12 +-
 net/tipc/sysctl.c |   9 +-
 7 files changed, 316 insertions(+), 189 deletions(-)

-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
