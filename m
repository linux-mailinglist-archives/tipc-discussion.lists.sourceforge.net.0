Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4560019637D
	for <lists+tipc-discussion@lfdr.de>; Sat, 28 Mar 2020 05:03:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jI2hB-0002Ns-K0; Sat, 28 Mar 2020 04:03:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1jI2hA-0002Nl-5Y
 for tipc-discussion@lists.sourceforge.net; Sat, 28 Mar 2020 04:03:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O0AuWwWJJRi74YaAhlwy0VAxAlw62wXyZGedk7l4Z5M=; b=cMbT8IRnp1RQt3SrVbqzjF9MPZ
 3wtY1cBCFBgc4lH5X8jZrZIaqUyHzrYFfNbqpFcKhZFowQ3sNsU9t9/MB7k3W8NsmPZtbOTUcQwLw
 HbojbSPDeE7iOF5iMyJ5YxVpGlgQUvFJZ18UsaMnCiW8ziwGxBD+wKmfJJJxNtY7giLo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=O0AuWwWJJRi74YaAhlwy0VAxAlw62wXyZGedk7l4Z5M=; b=TeOR1LFqujpUdm+Dp4vq02JEl1
 5rBHKTYRnN2TsNLCDXmZFqJWEGelpJVAA5A+8zoWijSl9RNqDymIFdN7dYsiZnWgc2fmtlBhmwMzY
 iT9mgbb13md9nP7w+iqHJ93OSrbEnqoVTMMo85fwGudrqDglLbzOYolacnaYX0qw6yvw=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jI2h7-007JjQ-TD
 for tipc-discussion@lists.sourceforge.net; Sat, 28 Mar 2020 04:03:40 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id F20594E5CE;
 Sat, 28 Mar 2020 15:03:23 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1585368203; bh=fcQse
 hb4aCOpas+xnALGSgztndnZFsUZOyf0pVmj0JQ=; b=A3ncPa0GkS4ZVRsemB0nP
 n8GJPe03Erv+hOT9nC24WUfEFo0rVn0vZJyagTfLvP4/CWjQrJ36YR719deXTP/6
 L20jni/hdi4tpPPAto/0mBWLaFFnqBjBtg3J6zZqgTSsfpDFqoPLuIjrmx8O/GaQ
 pUP+NsZZ8KJFFJfLRebkSU=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id UbzGaMBNIJ3b; Sat, 28 Mar 2020 15:03:23 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 4892D4E5CF;
 Sat, 28 Mar 2020 15:03:23 +1100 (AEDT)
Received: from localhost.localdomain (unknown [183.80.119.139])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id A63F14E5CE;
 Sat, 28 Mar 2020 15:03:21 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: jmaloy@redhat.com, maloy@donjonn.com, ying.xue@windriver.com,
 tipc-discussion@lists.sourceforge.net
Date: Sat, 28 Mar 2020 11:03:05 +0700
Message-Id: <20200328040309.4656-1-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-Spam-Score: -0.0 (/)
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
 0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jI2h7-007JjQ-TD
Subject: [tipc-discussion] [PATCH RFC 0/4] tipc: add some improvements for
 broadcast
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
Cc: tipc-dek@dektech.com.au
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Jon, all,

Please find the full series here,
+ For the 1st patch: it's really the last one I sent before, so you have
ack-ed already.
+ For the other ones, please help take a look. Also, I will send another
patch for iproute2/tipc which is user-space part of the last one in this
series i.e. broadcast rcv stats dumping.

Thanks alot!

Tuong Lien (4):
  tipc: introduce Gap ACK blocks for broadcast link
  tipc: add back link trace events
  tipc: enable broadcast retrans via unicast
  tipc: add support for broadcast rcv stats dumping

 net/tipc/bcast.c   |  22 ++-
 net/tipc/bcast.h   |   9 +-
 net/tipc/link.c    | 500 +++++++++++++++++++++++++++++++----------------------
 net/tipc/link.h    |  11 +-
 net/tipc/msg.c     |   9 +-
 net/tipc/msg.h     |  16 +-
 net/tipc/netlink.c |   2 +-
 net/tipc/node.c    |  75 ++++++--
 net/tipc/sysctl.c  |   9 +-
 net/tipc/trace.h   |  17 +-
 10 files changed, 424 insertions(+), 246 deletions(-)

-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
