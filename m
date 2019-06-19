Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F365F4B07E
	for <lists+tipc-discussion@lfdr.de>; Wed, 19 Jun 2019 05:44:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hdRWd-0002yS-KG; Wed, 19 Jun 2019 03:44:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <xdtjory@dek-tpc.internal>) id 1hdRWb-0002y6-5f
 for tipc-discussion@lists.sourceforge.net; Wed, 19 Jun 2019 03:44:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lXMWCjL65XgViWy0zwLdv12Ll+Cyli304zSeM/UiVb8=; b=GSGvVY2XYzyNbTN8xQ8p853vvs
 rFgITQ7DNvLzJ7+WFCh/1n457zggiY0qrP7to/GsV26ty/lY9CWE9bewfPxARvNkMN02M77PUPrWP
 LrkwZbT1oT16A0WtqrqPzPTyP2DHbrd9Qsi2kaiQf7Do0dFjj6JrMPVFKwGjTJ2L9VZI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lXMWCjL65XgViWy0zwLdv12Ll+Cyli304zSeM/UiVb8=; b=aEFspLBNdN9sLwgCidX6/eNrRY
 SLPT3dnVxTqgDqdBuduAvymwIxn8acxiceqYgJbbUJDvtQBAdUrcqT9OrI7EvdQhBo+qeiFdL1XEU
 4/IUr6v9t4k3HZqMIyqivwRsSJV7QyH+GN9G7Ue107nOsbKg+q6Hp8tp8T5BcO429xmc=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hdRWX-00GeNx-BA
 for tipc-discussion@lists.sourceforge.net; Wed, 19 Jun 2019 03:44:40 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 18E41E55D3;
 Wed, 19 Jun 2019 13:44:30 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=x-mailer:message-id:date:date:subject:subject:from:from
 :received:received:received; s=mail_dkim; t=1560915870; bh=R+KDM
 TzbD1w30kg5/4+zNuggoHREV6ZnbRExnWbp0FU=; b=jSL58JQJunO2a7cajmH+s
 NfsdsgxgnSbg+VWuPD/JIoxdUdqfzIvpVBRBLqwOEI5XHveVNT2xGgdju89pmAL7
 /VLRa5cGTMrzNknJ61ACdoQlYgHAChkqudgH5rCcVCKLWF/kHfIsbIM4KeCpPzDG
 k4HmW4DKoIe7L3A1T8f29w=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id H4BeaQirAXXm; Wed, 19 Jun 2019 13:44:30 +1000 (AEST)
Received: from cba01.dek-tpc.internal (cba01.dek-tpc.internal [172.16.83.49])
 by mail.dektech.com.au (Postfix) with ESMTP id F3486E510A;
 Wed, 19 Jun 2019 13:44:29 +1000 (AEST)
Received: by cba01.dek-tpc.internal (Postfix, from userid 1014)
 id E6BAB183323; Wed, 19 Jun 2019 13:44:29 +1000 (AEST)
From: John Rutherford <john.rutherford@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net
Date: Wed, 19 Jun 2019 13:44:13 +1000
Message-Id: <20190619034413.25800-1-john.rutherford@dektech.com.au>
X-Mailer: git-send-email 2.13.7
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 0.4 NO_DNS_FOR_FROM        DNS: Envelope sender has no MX or A DNS records
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hdRWX-00GeNx-BA
Subject: [tipc-discussion] [net-next] tipc: fix missing indentation in
 source code
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

Fix misalignment of policy statement in netlink.c due to automatic
spatch code transformation.

Fixes: 3b0f31f2b8c9 ("genetlink: make policy common to family")
Signed-off-by: John Rutherford <john.rutherford@dektech.com.au>
---
 net/tipc/netlink.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/tipc/netlink.c b/net/tipc/netlink.c
index 99bd166..d6165ad 100644
--- a/net/tipc/netlink.c
+++ b/net/tipc/netlink.c
@@ -261,7 +261,7 @@ struct genl_family tipc_genl_family __ro_after_init = {
 	.version	= TIPC_GENL_V2_VERSION,
 	.hdrsize	= 0,
 	.maxattr	= TIPC_NLA_MAX,
-	.policy = tipc_nl_policy,
+	.policy		= tipc_nl_policy,
 	.netnsok	= true,
 	.module		= THIS_MODULE,
 	.ops		= tipc_genl_v2_ops,
-- 
2.11.0



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
