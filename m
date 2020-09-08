Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 683FF26159B
	for <lists+tipc-discussion@lfdr.de>; Tue,  8 Sep 2020 18:53:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kFgsF-0006D4-O9; Tue, 08 Sep 2020 16:53:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <login2@airmail.cc>) id 1kFgsC-0006CJ-CA
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Sep 2020 16:53:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Subject:From:To:Date:Sender:Reply-To:Message-ID:Cc:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zqO0z0E/r3MtNFGG479ZlppRZ1k953Pazm9aGditIOY=; b=EuSf/WAkW9pQpo3jNG4IvRaZmD
 6PcEmYBmSLvsE9qwTgoWEKpIhS7KsQD7gYjcqaJSUrHy1L0N8WNcYtf3wLMW5SQUCpmovOTaTh9li
 BwajXNbUwGyOPeWBhQlj96UbXdF6bETUo0L6p3cYHRRJ3KMDM2Sn4W8mswXP0jV5P6dA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Subject:From:To:Date:Sender:Reply-To:Message-ID:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zqO0z0E/r3MtNFGG479ZlppRZ1k953Pazm9aGditIOY=; b=DSILu083VJh+UU2PiLQOpJfMZB
 is3q0BI3AVQxJWrqG7bbmU7dxtKuIyrfp2PQcBr8MuZKgt/U1RxxZaV4vH4mesctMH/8d8Kit0sJ9
 Qz2NzuDBnYHurEdVCsVkLf4MCtzPBqTp1XnwO4OBx/PfXB0oCO1sKCr3JtU8djq+mT/M=;
Received: from mail.cock.li ([37.120.193.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kFgs5-00H1sk-ML
 for tipc-discussion@lists.sourceforge.net; Tue, 08 Sep 2020 16:53:36 +0000
Date: Tue, 08 Sep 2020 16:53:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=airmail.cc; s=mail;
 t=1599583988; bh=zqO0z0E/r3MtNFGG479ZlppRZ1k953Pazm9aGditIOY=;
 h=Date:To:From:Subject:From;
 b=HsTHJRcW3LmMfvD11kqspIlWzlJUIcw1ZVFHXWMQ5P5MnZsITEhTyHx5/dRGVimXu
 H46ltnTiCS6ji1Khm/bKdoqdzJKdD7/ZGTK4+7oYRfvSL5qodsy7i+fPMpgEGhs1Y/
 HujaEU6rxfSrC/X3DjZ4VKcVShTjsOKjGmY4eOKA2H9BbfYfbKgLb0gCQv/0aXkOcP
 9rWnjzzMiFJXCZg9YsGlXJ6ym2kXJ3w9C/s07AJooo2SnoDqle1Y2ai/hrTZPBd5L9
 l4g2/Ux3x1AH0ORFMN86PRfvubu/r7zULiw1gG8NqPMSKAGl6nsgyeaMdxzeHyeQkL
 Eaiuv5EuR/10w==
To: tipc-discussion@lists.sourceforge.net
From: login2@airmail.cc
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 MISSING_MID            Missing Message-Id: header
X-Headers-End: 1kFgs5-00H1sk-ML
Subject: [tipc-discussion] Increasing TIPC throughput by applying analysis
 to the long-standing performance issues
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
Message-Id: <E1kFgsF-0006D4-O9@sfs-ml-1.v29.lw.sourceforge.com>

Dear TIPC developers:

May I ask you to give some feedback the following messages (parts given down below) may deserve:

https://sourceforge.net/p/tipc/mailman/message/7248018/
[tipc-discussion] TIPC SOCK_STREAM performance improvement idea
From: Stephens, Allan <allan.stephens@...> - 2006-08-09 18:50:08
> I've coded up a prototype patch (see below) that avoids the unwanted
> fragmentation problem by using the port's maximum packet size "hint"
> field to help it determine how big a chunk can be sent without exceeding
> the link MTU.

https://sourceforge.net/p/tipc/mailman/message/37073434/
[tipc-discussion] Comments on TIPC SOCK_STREAM protocol overhead?
From: <login2@ai...> - 2020-07-29 22:11:30
> Lack of write coalescing usually introduces overhead in form of a small extra network frame for each send(2) unless buf_len is divisible by link MTU minus headers.
> Fragmentation for SOCK_STREAM writes caused by upper record boundary set to TIPC_MAX_USER_MSG_SIZE [1] instead of (link MTU - SHORT_H_SIZE) [2].
> pktmax - INT_H_SIZE in msg.c effectively reduces link MTU by 40 even though the accounted space is left unused.

Please give a bit of attention those messages may deserve:


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
