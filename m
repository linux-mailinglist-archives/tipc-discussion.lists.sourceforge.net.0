Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A003E232768
	for <lists+tipc-discussion@lfdr.de>; Thu, 30 Jul 2020 00:11:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1k0uIb-0005AM-FA; Wed, 29 Jul 2020 22:11:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <login2@airmail.cc>) id 1k0uIM-00059N-Kg
 for tipc-discussion@lists.sourceforge.net; Wed, 29 Jul 2020 22:11:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0jNDYFaFLnyM1TH2glIzbjBRy44JNeKgWQQPy1mUUjI=; b=V5GsTQetLIvyOq2TGC55RgbGh/
 WoYZmYRiZwk/4GrUljB3Ix4YQJOIkO7UyELVgrSxAaTdnGNPwHqESd3fMY8ox/h38lelKIZ7vRKYq
 +fkpKvvqTCEiwbIINmtgZiRV7ttsojyzt8EL3aW+A20A8jnmPuerHveCsAIIwHeMnzLI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
 Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0jNDYFaFLnyM1TH2glIzbjBRy44JNeKgWQQPy1mUUjI=; b=K
 wlv5sGVBBp7DTLdBe+/6SJpWCOCJrkOzGTCYgdGZb+YdpGrUI8xjDq02KucaaQdqhYAS6oO1R04xq
 gaNqzsAekXC940erG4oY9kRRQicrMCxWHysA9Nbb6c09unq+jkw7Zecl5oG1dglySBlnKSDcYhKCg
 Y+8HOSV5HtPe4yNo=;
Received: from mail.cock.li ([37.120.193.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k0uIJ-003dJ4-EB
 for tipc-discussion@lists.sourceforge.net; Wed, 29 Jul 2020 22:11:30 +0000
From: login2@airmail.cc
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=airmail.cc; s=mail;
 t=1596060677; bh=0jNDYFaFLnyM1TH2glIzbjBRy44JNeKgWQQPy1mUUjI=;
 h=From:To:Subject:Date:From;
 b=hLzcEvk88wC43BIUXGhWPhMLtajg7+SJHJQyI1LXQQyccKcOn3Snin/nvnidUxEwb
 h592yYl4XOUt+TLvK73pCvkXOWtySqd4QaC/0CjqXSQgCeBBq24vCv/fcyLDMP1f9B
 nQYBYk16NsnFaIXYNXgm0p0sfDSaagxaYs/FkTmoqPO+xRhdxxX9hAx6nAkZEi04qx
 5puvMEEL4vLfvppbEGi71uDYQUnNC1OJ/UIhbCvtE22RqLkItGjgCxggxyY6bOqjWz
 hkb0LscvYrKqZN3xrcwp7a5foJh2Y5I+CrhIc9tS3Ur3W4UXUStbLSpm46PiaGzhj7
 y70ExPPUhfIlg==
To: tipc-discussion@lists.sourceforge.net
Date: Wed, 29 Jul 2020 22:11:10 +0000
Message-Id: <20200729221110.815790-1-login2@airmail.cc>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1k0uIJ-003dJ4-EB
Subject: [tipc-discussion] Comments on TIPC SOCK_STREAM protocol overhead?
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hello there:

Upstream TIPC's SOCK_STREAM implementation resembles SOCK_SEQPACKET; indeed, tipc_send_packet literally calls tipc_sendstream to do its job! I wonder whether the following stream protocol bandwidth issues are by design, or we could solve some or all of them:

* Lack of write coalescing usually introduces overhead in form of a small extra network frame for each send(2) unless buf_len is divisible by link MTU minus headers.
* Fragmentation for SOCK_STREAM writes caused by upper record boundary set to TIPC_MAX_USER_MSG_SIZE [1] instead of (link MTU - SHORT_H_SIZE) [2].
* pktmax - INT_H_SIZE in msg.c effectively reduces link MTU by 40 even though the accounted space is left unused.

[1] net/tipc/socket.c: send = min_t(size_t, dlen - sent, TIPC_MAX_USER_MSG_SIZE);
[2] Drawing a parallel with TCP, which does not preserve record boundaries, (link MTU - SHORT_H_SIZE) is equivalent to TCP_MAXSEG, maximum segment size.

P.S. Looks like someone saw the second issue more than a dozen years earlier, and his mail somehow slipped below the project's radar.

https://sourceforge.net/p/tipc/mailman/message/7248018/
[tipc-discussion] TIPC SOCK_STREAM performance improvement idea
From: Stephens, Allan <allan.stephens@wi...> - 2006-08-09 18:50:08


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
