Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AC29112CC05
	for <lists+tipc-discussion@lfdr.de>; Mon, 30 Dec 2019 04:04:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1illLc-00085v-Ut; Mon, 30 Dec 2019 03:04:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1illLb-00085n-CU
 for tipc-discussion@lists.sourceforge.net; Mon, 30 Dec 2019 03:03:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=djzagJvMW/DUzNhxWzKRGCesB2NytsDjXKUEmjNDy4o=; b=ARx4Z4fLE76JVdm4kk0srT1PGA
 J3YdtI1kNjEf6/4smtk2P6g0uI45WIez2u7NVOBCBwuIqKcs99hlxtYKCPUAokDQa1NMptqb/qUMg
 1c6wUJFfXWxlFaZxqrJRR+JIGu5s6229Fd4I4i8jMSxV/TJqQdTDonxu3ZLQ6VRcXPWM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=djzagJvMW/DUzNhxWzKRGCesB2NytsDjXKUEmjNDy4o=; b=TpBHc3/lCpamjPGKcUtlrBHYh4
 13/IkXZMh/H9tJKIcsL8BCn6o0NtJ7lnsIJTrn8KqV+kHNqDSl8wWrpAzBKA0EFhUSMkYrq7GtMeL
 vnDL1hEpFt0+flHIpjp596HpdgUk0EFzeOVn/gedqR09xIOayXM2lSq2csaEnNKZCNBM=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1illLT-001Bl1-M6
 for tipc-discussion@lists.sourceforge.net; Mon, 30 Dec 2019 03:03:59 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 1FF284A369;
 Mon, 30 Dec 2019 14:03:43 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1577675023; bh=ZY58+
 dHzQq2+o/IYWIU3lTJQn6+7YsNoOT7JCX/TkZ4=; b=GnBwQyhXOuBHkD/VWul/k
 DeXKnueVUQlLB+z1jgxUxmtALR4BmjaSEsJrHSIfGl9BSZhJWNuSCKYIiOZmxGv0
 GwaUETjlC3uzprac2JbZuPhEHKXwhn95IfWqBWsdz43wO8xZwVaelDeXE6WO5ory
 SdgnvzdYBqPJ7NQq/CU8Q4=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id alL9OuIdfhGP; Mon, 30 Dec 2019 14:03:43 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id A71854AFB6;
 Mon, 30 Dec 2019 14:03:42 +1100 (AEDT)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 0E6214A369;
 Mon, 30 Dec 2019 14:03:40 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: dsahern@gmail.com, jmaloy@redhat.com, maloy@donjonn.com,
 ying.xue@windriver.com, netdev@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net
Date: Mon, 30 Dec 2019 10:03:33 +0700
Message-Id: <20191230030333.17845-1-tuong.t.lien@dektech.com.au>
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
X-Headers-End: 1illLT-001Bl1-M6
Subject: [tipc-discussion] [iproute2] tipc: fix clang warning in tipc/node.c
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

When building tipc with clang, the following warning is found:

tipc
    CC       bearer.o
    CC       cmdl.o
    CC       link.o
    CC       media.o
    CC       misc.o
    CC       msg.o
    CC       nametable.o
    CC       node.o
node.c:182:24: warning: field 'key' with variable sized type 'struct tipc_aead_key' not at the end of a struct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
                struct tipc_aead_key key;

This commit fixes it by putting the memory area allocated for the user
input key along with the variable-sized 'key' structure in the 'union'
form instead.

Fixes: 24bee3bf9752 ("tipc: add new commands to set TIPC AEAD key")
Reported-by: Stephen Hemminger <stephen@networkplumber.org>
Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 tipc/node.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/tipc/node.c b/tipc/node.c
index 6c796bfb..ffdaeaea 100644
--- a/tipc/node.c
+++ b/tipc/node.c
@@ -179,8 +179,10 @@ static int cmd_node_set_key(struct nlmsghdr *nlh, const struct cmd *cmd,
 			    struct cmdl *cmdl, void *data)
 {
 	struct {
-		struct tipc_aead_key key;
-		char mem[TIPC_AEAD_KEYLEN_MAX + 1];
+		union {
+			struct tipc_aead_key key;
+			char mem[TIPC_AEAD_KEY_SIZE_MAX];
+		};
 	} input = {};
 	struct opt opts[] = {
 		{ "algname",	OPT_KEYVAL,	NULL },
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
