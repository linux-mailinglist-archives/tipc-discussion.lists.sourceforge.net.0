Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 823C7248F13
	for <lists+tipc-discussion@lfdr.de>; Tue, 18 Aug 2020 21:52:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1k87f1-0004HY-8w; Tue, 18 Aug 2020 19:52:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1k87f0-0004HN-3b
 for tipc-discussion@lists.sourceforge.net; Tue, 18 Aug 2020 19:52:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HS5ZYJih/voV9W/mprlKOjedqBPqUYF+d2mIzyRrnFQ=; b=VntM7T5UEDCtEDMWEuSk0iWlA+
 HXcee6AByjhditXCbFIOePeoqtTS+jmMoAlMPWFTs8As3lNio/LL1vPtzLsJ+MS1gzMczz/BXnw+I
 TkNWcWbD63/yV0BwMBXK7VzY/4K74S9nQoTB0CEVq+3SNylz+nJNv+lJn9Jl+KfD7pQM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HS5ZYJih/voV9W/mprlKOjedqBPqUYF+d2mIzyRrnFQ=; b=N
 zHS/9URs7UBP0Klyy+1gNs5KwYyn9P2AZ32Wq6t6d+hj6CY1OYgGL9FMQTK/oa1nzQ9IOlvMzR2Zb
 /wR5hdH9Tb9YBqwxLabJzMBZcYwzLay1aSCuMWutQVIQLlmvdD2PUvftGjvwBwozXO9ZmJ/Rb9F9O
 SBaOG1QFGSlESs78=;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1k87eu-00Bk6j-Kf
 for tipc-discussion@lists.sourceforge.net; Tue, 18 Aug 2020 19:52:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1597780350;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=HS5ZYJih/voV9W/mprlKOjedqBPqUYF+d2mIzyRrnFQ=;
 b=dLZeXOhVKqomV0OcKBvk1yLPnkBx7BsUjurkgmp6nhfUcJodHZLZEB2NPhLov7bL8l6tab
 ZyZ4yIUpFG1A+EuX38WblCi9HVJPbo12mvncnxnOOQql2xULP5SSoHx9GbKY6HbVWzBJ1B
 Ubpgr32coT5vIKDxW3QEQHCcIO2j5QM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-580-DxZnVIyLM6qG2cHkPpK-ow-1; Tue, 18 Aug 2020 15:52:01 -0400
X-MC-Unique: DxZnVIyLM6qG2cHkPpK-ow-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C38B66408B;
 Tue, 18 Aug 2020 19:52:00 +0000 (UTC)
Received: from [10.10.116.135] (ovpn-116-135.rdu2.redhat.com [10.10.116.135])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 316911659E;
 Tue, 18 Aug 2020 19:52:00 +0000 (UTC)
From: Jon Maloy <jmaloy@redhat.com>
To: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>,
 "tipc-dek@dektech.com.au" <tipc-dek@dektech.com.au>,
 Ying Xue <ying.xue@windriver.com>, Xin Long <lucien.xin@gmail.com>,
 Shuang Li <shuali@redhat.com>
Message-ID: <a091c3f7-ee1f-dd45-eba8-1bc82b373fd6@redhat.com>
Date: Tue, 18 Aug 2020 15:51:59 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0.001
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [205.139.110.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [205.139.110.120 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: syzkaller.appspot.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1k87eu-00Bk6j-Kf
Subject: [tipc-discussion] syzbot bugs
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi all,
Here is the link to the syzkaller dashboard I mentioned this morning.
If you search on the string "tipc" on the page you'll find that we have 
10 open issues.
I am sure that some of those already are solved, since there are people 
like our friend Cong Wang working on this kind of bugs, but this at 
least should give you an overview of the status.

https://syzkaller.appspot.com/upstream

///jon



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
