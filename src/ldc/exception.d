/**
 * Contains compiler-recognized user-defined attribute types.
 *
 * Copyright: Authors 2016
 * License:   $(LINK2 http://www.boost.org/LICENSE_1_0.txt, Boost License 1.0)
 * Authors:   Johan Engelen
 */
module ldc.exception;

/**
 * Returns the current "active" exception, or null when no exception is active.
 * An exception is considered active from when it is thrown until its catch
 * handler exits.
 *
 * Example:
 * ---
 * static import ldc.exception;
 * void testexample()
 * {
 *     void checkException(FooException ex)
 *     {
 *         assert(ex is ldc.exception.getCurrentException());
 *     }
 *
 *     try
 *     {
 *         checkException(null);
 *
 *         auto ex = new FooException;
 *         scope (exit)
 *             checkException(ex);
 *
 *         throw ex;
 *     }
 *     catch (FooException ex)
 *     {
 *         checkException(ex);
 *     }
 * }
 * ---
 */
extern (C) Throwable getCurrentException() nothrow @nogc;
