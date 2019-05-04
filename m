Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9981B13787
	for <lists+tipc-discussion@lfdr.de>; Sat,  4 May 2019 06:45:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hMmXt-0002Na-G0; Sat, 04 May 2019 04:45:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1hMmXs-0002NR-M1
 for tipc-discussion@lists.sourceforge.net; Sat, 04 May 2019 04:45:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PDuRH1K9JPffUuiQ/v22BW3SKSOeFhCOsRXBVAuUTAo=; b=XZcr7hXf4UI2w7t22+YwLSDUEH
 jjb/Da3wUPXhKpLsFMq09zZ7FlvUk8BLinou1TLE0XzBf44F5ryIOZzdqo1GHSHGyN49fPdgHeWHb
 180iDsmDAVU8FB9DPZnYmOMLkVkWyTPsTg+nI8yHioAX2+7XL4CbIvALOsyajBqyqSbY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PDuRH1K9JPffUuiQ/v22BW3SKSOeFhCOsRXBVAuUTAo=; b=maV92qD8VUByNKvUAhQd5kXFJL
 MEhQ7/1ThSCQSwTu1hP4HRUk7rLum5SgX7gBZUo7y+0KqWzlSL9+zd6Yy5+gSIzSpyIJFtwVDXKNp
 vvoNFJRWPVCaOgjU5gol4NFvgSlpmS3/9M9xpFL1jbsjMFd/155mz3MH5DkJIc13zzPw=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hMmXq-004ydw-GC
 for tipc-discussion@lists.sourceforge.net; Sat, 04 May 2019 04:45:08 +0000
Received: from localhost (unknown [75.104.87.19])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 205E314D91286;
 Fri,  3 May 2019 21:44:52 -0700 (PDT)
Date: Sat, 04 May 2019 00:44:49 -0400 (EDT)
Message-Id: <20190504.004449.945185836330139212.davem@davemloft.net>
To: chris.packham@alliedtelesis.co.nz
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190502031004.7125-1-chris.packham@alliedtelesis.co.nz>
References: <20190502031004.7125-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 03 May 2019 21:44:57 -0700 (PDT)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: alliedtelesis.co.nz]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [23.128.96.9 listed in list.dnswl.org]
X-Headers-End: 1hMmXq-004ydw-GC
Subject: Re: [tipc-discussion] [PATCH] tipc: Avoid copying bytes beyond the
 supplied data
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
Cc: tipc-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

From: Chris Packham <chris.packham@alliedtelesis.co.nz>
Date: Thu,  2 May 2019 15:10:04 +1200

> TLV_SET is called with a data pointer and a len parameter that tells us
> how many bytes are pointed to by data. When invoking memcpy() we need
> to careful to only copy len bytes.
> 
> Previously we would copy TLV_LENGTH(len) bytes which would copy an extra
> 4 bytes past the end of the data pointer which newer GCC versions
> complain about.
> 
>  In file included from test.c:17:
>  In function 'TLV_SET',
>      inlined from 'test' at test.c:186:5:
>  /usr/include/linux/tipc_config.h:317:3:
>  warning: 'memcpy' forming offset [33, 36] is out of the bounds [0, 32]
>  of object 'bearer_name' with type 'char[32]' [-Warray-bounds]
>      memcpy(TLV_DATA(tlv_ptr), data, tlv_len);
>      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>  test.c: In function 'test':
>  test.c::161:10: note:
>  'bearer_name' declared here
>      char bearer_name[TIPC_MAX_BEARER_NAME];
>           ^~~~~~~~~~~
> 
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>

But now the pad bytes at the end are uninitialized.

The whole idea is that the encapsulating TLV object has to be rounded
up in size based upon the given 'len' for the data.


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
