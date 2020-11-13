Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA382B1EF7
	for <lists+tipc-discussion@lfdr.de>; Fri, 13 Nov 2020 16:44:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kdbFa-0004PT-2N; Fri, 13 Nov 2020 15:44:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kdbFY-0004PI-MT
 for tipc-discussion@lists.sourceforge.net; Fri, 13 Nov 2020 15:44:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZV/d0cWd9Vk10WshzN91Y7AWk1X5+4ABxXjkicEsBpA=; b=H7b5egIDSJaQf2th3UIpw3Kqpn
 eOo9CZlPMhBM5vSQ5K4SdAjylIkfOkPxL/mwI7f8CHzG2hakKA9n7FRrUCcRneWIxSYC5T1edeUZA
 PYNgzaKlmogGHuZKVIW9UuhtO1v1MgMRZlY8Kyvd951lfsj7TGhzuYL9sXQTq+Gb/P+I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZV/d0cWd9Vk10WshzN91Y7AWk1X5+4ABxXjkicEsBpA=; b=dCeZtDImGTpQcI48bMr4uHM0VA
 oRMhjGmq/iT8aVayPghAQllMCoU3uY0eQbbmrO7mQIuAZsAjfeqG7d+UZPOJWrapJZsJjWIFUPsZB
 3PZUUAlirILRQL0fbwI7HVXeTt04nqWWKD2kawvNZ+ASkeXFcmKSq/0aFCmvCaSceYY8=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kdbFS-00AXSB-46
 for tipc-discussion@lists.sourceforge.net; Fri, 13 Nov 2020 15:44:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605282252;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZV/d0cWd9Vk10WshzN91Y7AWk1X5+4ABxXjkicEsBpA=;
 b=XI6xr1SRjao9uWaoltTvv/v+Ad9vYA8wMfElHgkf2nO30d6vhq4qzZao7dhIWep8AcAkbq
 qSnPoYUHPRK/UbbC91DeDzqVRDsEXR9z1CU4oK+yWjWRyTpLV7n5bGSma+aQlDyRRaexDx
 kwsgPF7a5vtEXtavPNEA+cScQ67DqVw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-576-X9AfjIYrOJ2758hlCdohJg-1; Fri, 13 Nov 2020 10:44:09 -0500
X-MC-Unique: X9AfjIYrOJ2758hlCdohJg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CE3F58015A3;
 Fri, 13 Nov 2020 15:44:07 +0000 (UTC)
Received: from [10.10.112.40] (ovpn-112-40.rdu2.redhat.com [10.10.112.40])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C23A25D9F1;
 Fri, 13 Nov 2020 15:44:05 +0000 (UTC)
To: Ying Xue <ying.xue@windriver.com>, tipc-discussion@lists.sourceforge.net
References: <20201112012640.525346-1-jmaloy@redhat.com>
 <20201112012640.525346-3-jmaloy@redhat.com>
 <873249ae-fe50-923c-211a-b3c55c31b1f9@windriver.com>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <027e424b-2667-b38a-6781-9773002489cd@redhat.com>
Date: Fri, 13 Nov 2020 10:44:04 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <873249ae-fe50-923c-211a-b3c55c31b1f9@windriver.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [63.128.21.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kdbFS-00AXSB-46
Subject: Re: [tipc-discussion] [net-next 2/3] tipc: make node number
 calculation reproducible
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
Cc: xinl@redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 11/13/20 7:23 AM, Ying Xue wrote:
> On 11/12/20 9:26 AM, jmaloy@redhat.com wrote:
>> +static inline u32 hash128to32(char *bytes)
>> +{
>> +	u32 *tmp = (u32 *)bytes;
>> +	u32 res;
>> +
>> +	res = ntohl(tmp[0] ^ tmp[1] ^ tmp[2] ^ tmp[3]);
>> +	if (likely(res))
>> +		return res;
>> +	res = tmp[0] | tmp[1] | tmp[2] | tmp[3];
>> +	return !res ? 0 : ntohl(18140715);
> In case that the hashed result is accidentally equal to the fix
> number(ie, ntohl(18140715)), how would we be able to differentiate it
> with the case where the hashed result is 0?
We don't need to. As said in the commit log, we are always ready to handle
hash collisions.
See commit 25b0b9c4e835 ("tipc: handle collisions of 32-bit node address 
hash values")
We will need this function for my 128-bit addresses too, but even there 
hash
collisions will be anticipated and handled.

///jon
>> +}



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
