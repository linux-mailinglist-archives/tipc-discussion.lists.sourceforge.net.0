Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC84357668
	for <lists+tipc-discussion@lfdr.de>; Wed,  7 Apr 2021 22:59:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lUFGi-0002B5-C7; Wed, 07 Apr 2021 20:59:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <jmaloy@redhat.com>) id 1lUFGU-0002AZ-Km
 for tipc-discussion@lists.sourceforge.net; Wed, 07 Apr 2021 20:59:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+tdXwJXrw8XzkuxaMxzDmr6JXtB6X8De8pmCTNQt4Kw=; b=PDC7dkLcIEV0duoWXsVTt9+n5n
 uPmE+ueLBsWSZO7CjlK/ojo2GmxnernU+jWVc1G+9o2GSoH7DOZpI7s5WvP1bd/k4z1SkeFzNSZ04
 /c/puAyHE8sf+hLObcO2hz0MiPwBsOUTKMmQiqpxUCrU4LaNfO5G0qg+N/S9DeM8sbgw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+tdXwJXrw8XzkuxaMxzDmr6JXtB6X8De8pmCTNQt4Kw=; b=R
 AH7VZWBeIW9tlUZQxKJ0IkmLLC4VUOjBpAEB5MNC+qaEyu13PC9+zXLePAwl7jh56tYxLGHr6xw4L
 mCBrwGjuUDrUro1XGvjzI6TtRJs7WMgtKV8Q+wL7Y/aiveQeFznUlVUn7EEl9aSSVDg07bN2e+Tna
 rHoeSJLR2imiFzPk=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lUFGH-00021N-89
 for tipc-discussion@lists.sourceforge.net; Wed, 07 Apr 2021 20:59:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1617829127;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=+tdXwJXrw8XzkuxaMxzDmr6JXtB6X8De8pmCTNQt4Kw=;
 b=g0jVAaQuf/L8Ihhq4UR8xetmi+BZJkcA0nUDcYRQMfTuH2CKYEOg/IEo7ukNs6AmC6Qo6e
 ep3R3iRuYKVX+rYBVCJDdgTzDKo8Fg8dc1us+qm0m4V8yZABvGkAGFbZFaX8OQScfkymyD
 4e8V83Nns9PAkGol8ymS8OS+TO5Nteg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-352-kP3_qQ3DO8iYOzk3a3nh7A-1; Wed, 07 Apr 2021 16:58:43 -0400
X-MC-Unique: kP3_qQ3DO8iYOzk3a3nh7A-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A986A19251A2;
 Wed,  7 Apr 2021 20:58:41 +0000 (UTC)
Received: from fenrir.redhat.com (ovpn-114-63.rdu2.redhat.com [10.10.114.63])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 076685D9D0;
 Wed,  7 Apr 2021 20:58:37 +0000 (UTC)
From: jmaloy@redhat.com
To: tipc-discussion@lists.sourceforge.net
Date: Wed,  7 Apr 2021 16:58:33 -0400
Message-Id: <20210407205836.3187340-1-jmaloy@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lUFGH-00021N-89
Subject: [tipc-discussion] [net-next v2 0/3] tipc: some small cleanups
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

We make some minor code cleanups and improvements.

---
v2: - Removed patch #1 from v1, which has now been applied upstream
    - Fixed memory leak in patch #2 as identified by Hoang
 
Jon Maloy (3):
  tipc: eliminate redundant fields in struct tipc_sock
  tipc: refactor function tipc_sk_anc_data_recv()
  tipc: simplify handling of lookup scope during multicast message
    reception

 net/tipc/name_table.c |   6 +-
 net/tipc/name_table.h |   4 +-
 net/tipc/socket.c     | 149 +++++++++++++++++++-----------------------
 3 files changed, 74 insertions(+), 85 deletions(-)

-- 
2.29.2



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
