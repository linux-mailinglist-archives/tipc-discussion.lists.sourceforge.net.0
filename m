Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 255FD349631
	for <lists+tipc-discussion@lfdr.de>; Thu, 25 Mar 2021 16:56:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lPSLo-0002vF-MK; Thu, 25 Mar 2021 15:56:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1lPSLj-0002uL-8W
 for tipc-discussion@lists.sourceforge.net; Thu, 25 Mar 2021 15:56:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RyH9ZeMon5WqBs1Vm3A3RESlCUeXlfdPfbRp3LqPhRA=; b=GusMLlEn2baml3eDX+V8dP952f
 QFKErETj8f5C8ut9UOVexBb4er3naxCekCBE2KGzq3miUvxBEY2d/NVLtYNwMIwUzjKzqI82ImWZk
 0s7Gx2HUc8f34sq3LCxb6Y3pM38OB77wZOOmKhnxI/CvwmmPiaAGtn/E+bRKly6WXt3g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=RyH9ZeMon5WqBs1Vm3A3RESlCUeXlfdPfbRp3LqPhRA=; b=Y
 BvGHvOZPo6CXOQx0EDH1QOp1w7sg0lCWusNE+FlzOSN2NwNLlg0dgI0S50HwrPLOYzbnXkMl92sfD
 L3qQqo6yaOQBu+j74fLOnmfE+f1acViTTdQ6OQ0feY8Ck49xPr5ciEvjaEQuacGwNqsfuKgS/OWKZ
 bJtXG8ciZBnZ596I=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lPSLa-00AHEB-Eu
 for tipc-discussion@lists.sourceforge.net; Thu, 25 Mar 2021 15:56:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1616687788;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=RyH9ZeMon5WqBs1Vm3A3RESlCUeXlfdPfbRp3LqPhRA=;
 b=MUWV0RorJRlakaEjR2kNBJiYiOYFaDMC7hg7xcAp1fGI0tOWnVfKfZwS547rydLeB96Lr3
 4WepchUd8lmcSxy6YWk+ufJV+lX0VyFF6D7tCjQjKlmf7Ig+37vt9uFg7AB54e56KH78A/
 0mpRdx8NfblUFq0Tu5EL/UZWb5NXwCw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-450-xlf84LaVM7a-Hv9nucyANA-1; Thu, 25 Mar 2021 11:56:26 -0400
X-MC-Unique: xlf84LaVM7a-Hv9nucyANA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 013B81009E33;
 Thu, 25 Mar 2021 15:56:25 +0000 (UTC)
Received: from fenrir.redhat.com (ovpn-114-63.rdu2.redhat.com [10.10.114.63])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B2C446EF40;
 Thu, 25 Mar 2021 15:56:22 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Thu, 25 Mar 2021 11:56:17 -0400
Message-Id: <20210325155621.2055206-1-jmaloy@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lPSLa-00AHEB-Eu
Subject: [tipc-discussion] [net-next 0/4] tipc: some small cleanups
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
Cc: lxin@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Jon Maloy <jmaloy@redhat.com>

We fix a couple of warnings and make some minor code cleanups and
improvements.

Jon Maloy (4):
  tipc: fix htmldoc and smatch warnings
  tipc: eliminate redundant fields in struct tipc_sock
  tipc: refactor function tipc_sk_anc_data_recv()
  tipc: simplify handling of lookup scope during multicast message
    reception

 net/tipc/name_table.c |   6 +-
 net/tipc/name_table.h |   4 +-
 net/tipc/socket.c     | 151 +++++++++++++++++++-----------------------
 net/tipc/subscr.h     |   3 +-
 4 files changed, 77 insertions(+), 87 deletions(-)

-- 
2.29.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
